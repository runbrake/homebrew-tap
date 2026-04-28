class Runbrake < Formula
  desc "Local-first scanner and OpenClaw policy adapter for risky agent skills"
  homepage "https://github.com/runbrake/runbrake-oss"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runbrake/runbrake-oss/releases/download/v0.1.0/runbrake_v0.1.0_darwin_arm64.tar.gz"
      sha256 "7ec50bac27b78d803868524583a9c9021a29e527daa5ace4597af98024af0fea"
    else
      url "https://github.com/runbrake/runbrake-oss/releases/download/v0.1.0/runbrake_v0.1.0_darwin_amd64.tar.gz"
      sha256 "3655d6c6a5244de19a32ec53d5f521c44bb4aab118c7fbad252bd565e4de36e9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runbrake/runbrake-oss/releases/download/v0.1.0/runbrake_v0.1.0_linux_arm64.tar.gz"
      sha256 "f194411090a682fccb9f41fbcab89745ca89964e58836f4c8d49cc03e9b63a3a"
    else
      url "https://github.com/runbrake/runbrake-oss/releases/download/v0.1.0/runbrake_v0.1.0_linux_amd64.tar.gz"
      sha256 "8e0f4f8141c93536f4c46cf31e2664745574eb798bd5b0b92e51e79d55605fe0"
    end
  end

  def install
    bin.install "runbrake"
  end

  test do
    assert_match "runbrake doctor", shell_output("#{bin}/runbrake 2>&1", 2)
  end
end
