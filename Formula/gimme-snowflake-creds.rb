# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GimmeSnowflakeCreds < Formula
  desc "Okta > OAuth > Snowflake > Creds"
  homepage "https://github.com/hginsights/gimme-snowflake-creds"
  version "0.3.3"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/HGInsights/gimme-snowflake-creds/releases/download/0.3.3/gimme-snowflake-creds_0.3.3_darwin_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "e35c77d740a25e6cd45a03ec1d6e8a9dfc7b7bdfbb0c588b30158c84c058fa28"
    end
    if Hardware::CPU.intel?
      url "https://github.com/HGInsights/gimme-snowflake-creds/releases/download/0.3.3/gimme-snowflake-creds_0.3.3_darwin_amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "5b12e9ddcc7844b6b02bc4c1eb71f655467fe4d26c4c9838341c72ca22ee7d8a"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/HGInsights/gimme-snowflake-creds/releases/download/0.3.3/gimme-snowflake-creds_0.3.3_linux_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "0a408274b65306856a0f05e155ee53e20338f62e06403f2d374fd62a25c6d5ab"
    end
    if Hardware::CPU.intel?
      url "https://github.com/HGInsights/gimme-snowflake-creds/releases/download/0.3.3/gimme-snowflake-creds_0.3.3_linux_amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "24b81a6c09ceb4edc0fa629f8b6cc5a23a61a1a11e6446bfc93677dc364b27c5"
    end
  end

  def install
    bin.install "gimme-snowflake-creds"
  end
end
