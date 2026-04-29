class Runbrake < Formula
  desc "Local-first scanner and OpenClaw policy adapter for risky agent skills"
  homepage "https://github.com/runbrake/runbrake-oss"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runbrake/runbrake-oss/releases/download/v0.1.1/runbrake_v0.1.1_darwin_arm64.tar.gz"
      sha256 "cec5cbb85fb9c9941761e163249c09faf729fb2c02cee0256e95a23e46a3006b"
    else
      url "https://github.com/runbrake/runbrake-oss/releases/download/v0.1.1/runbrake_v0.1.1_darwin_amd64.tar.gz"
      sha256 "731781dda7553bc5b3006a7fc27361c888447a806e5350cae24bf6bcd08c963b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runbrake/runbrake-oss/releases/download/v0.1.1/runbrake_v0.1.1_linux_arm64.tar.gz"
      sha256 "a45bf65e55a784b145b1d71d7eae467db1f697ddaec1215d8c0d3243d67365e1"
    else
      url "https://github.com/runbrake/runbrake-oss/releases/download/v0.1.1/runbrake_v0.1.1_linux_amd64.tar.gz"
      sha256 "f63dc89fc996d9ae31064d80ee71adb0a5fa90623881f5eccd82fdbc7ad48cd9"
    end
  end

  def install
    bin.install "runbrake"
  end

  test do
    assert_match "RunBrake v#{version}", shell_output("#{bin}/runbrake")
  end
end
