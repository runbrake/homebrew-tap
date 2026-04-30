class Runbrake < Formula
  desc "Local-first scanner, sidecar, and policy adapters for risky agent skills"
  homepage "https://github.com/runbrake/runbrake-oss"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runbrake/runbrake-oss/releases/download/v0.1.2/runbrake_v0.1.2_darwin_arm64.tar.gz"
      sha256 "9bae3b8b4fa29c695cbe741d17d2b6e763dd0128dc3f206ab2cca0f4bd065e9a"
    else
      url "https://github.com/runbrake/runbrake-oss/releases/download/v0.1.2/runbrake_v0.1.2_darwin_amd64.tar.gz"
      sha256 "fb6cf25e68c634faddc2ddd1a8ddf243b8299f48dc5ba395af25b64731510ef6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runbrake/runbrake-oss/releases/download/v0.1.2/runbrake_v0.1.2_linux_arm64.tar.gz"
      sha256 "1f6cd50a978dc6c46f2a16bea001f16675ad8f0b36f7c8b65f18b2e285d5f764"
    else
      url "https://github.com/runbrake/runbrake-oss/releases/download/v0.1.2/runbrake_v0.1.2_linux_amd64.tar.gz"
      sha256 "58dbdd13bfed26d793e4e3a7270948c3cd1c7bb962a325a45268d7c6200badb0"
    end
  end

  def install
    bin.install "runbrake"
  end

  test do
    assert_match "RunBrake v#{version}", shell_output("#{bin}/runbrake")
  end
end
