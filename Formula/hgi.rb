class Hgi < Formula
  desc "Command-line client for the HG Insights MCP server"
  homepage "https://github.com/HGInsights/hgi-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/HGInsights/hgi-cli/releases/download/v0.1.1/hgi-v0.1.1-darwin-arm64.tar.gz"
      sha256 "e41d6e15be1b50d9287ce4e72b59f32329cc24d34c410797869b9612b3d61ec2"
    end
    on_intel do
      url "https://github.com/HGInsights/hgi-cli/releases/download/v0.1.1/hgi-v0.1.1-darwin-x64.tar.gz"
      sha256 "d20f520bc3109996306e4aa419414f8cba04e17c2abdfe1bcfd469ae8f837b39"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/HGInsights/hgi-cli/releases/download/v0.1.1/hgi-v0.1.1-linux-arm64.tar.gz"
      sha256 "6b0e8c857f8a4d9c4a680ecea9a2762de72389cb89d09265ba2c82fdcddc6ba0"
    end
    on_intel do
      url "https://github.com/HGInsights/hgi-cli/releases/download/v0.1.1/hgi-v0.1.1-linux-x64.tar.gz"
      sha256 "d315720963c41c2bad3e3226e38725d5e55c13dee822e42d4553e1572aa69f23"
    end
  end

  # The binary is a signed single-executable application. Stripping or relinking it would remove the
  # embedded program and invalidate the macOS signature, so Homebrew must leave it byte-for-byte alone.
  skip_clean "bin/hgi"

  def install
    bin.install "hgi"
    doc.install "LICENSE", "THIRD_PARTY_NOTICES", "NODE_LICENSE"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/hgi --version").strip
  end
end
