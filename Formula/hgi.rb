class Hgi < Formula
  desc "Command-line client for the HG Insights MCP server"
  homepage "https://github.com/HGInsights/hgi-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/HGInsights/hgi-cli/releases/download/v0.1.0/hgi-v0.1.0-darwin-arm64.tar.gz"
      sha256 "3a889e328df736254ebb9ce5fc5aedfc7866acda9d144dc2445cd0ba2f6abf4a"
    end
    on_intel do
      url "https://github.com/HGInsights/hgi-cli/releases/download/v0.1.0/hgi-v0.1.0-darwin-x64.tar.gz"
      sha256 "75c66a20651d1adedfc9c427ba460ef06d96ef1eca498cdb98b0c391d3b0efc6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/HGInsights/hgi-cli/releases/download/v0.1.0/hgi-v0.1.0-linux-arm64.tar.gz"
      sha256 "cf43a92a08da8f31a24254616610484f6c09956267d3e7374b0cb1c0daca41f1"
    end
    on_intel do
      url "https://github.com/HGInsights/hgi-cli/releases/download/v0.1.0/hgi-v0.1.0-linux-x64.tar.gz"
      sha256 "355841fac8d5795cdec1a34934577300ec5f7fa24062f13c00f84166e757d2f1"
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
