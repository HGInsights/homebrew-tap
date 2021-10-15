# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GimmeSnowflakeCreds < Formula
  desc "Okta > OAuth > Snowflake > Creds"
  homepage "https://github.com/hginsights/gimme-snowflake-creds"
  version "0.4.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/HGInsights/gimme-snowflake-creds/releases/download/0.4.0/gimme-snowflake-creds_0.4.0_darwin_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "8e4854abd00232ca1416769f12aeeb9dcf3f96f33782b79e059333ed4395af34"
    end
    if Hardware::CPU.intel?
      url "https://github.com/HGInsights/gimme-snowflake-creds/releases/download/0.4.0/gimme-snowflake-creds_0.4.0_darwin_amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "34c7228aa8a69ccbc42b638a115ae0f2ac9ea2e246e4f6224072dab2ca6d056f"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/HGInsights/gimme-snowflake-creds/releases/download/0.4.0/gimme-snowflake-creds_0.4.0_linux_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "071d62b11b3a628d26d75ae3b9d0eea61cc93cd188694c8d3a477c0599639fa6"
    end
    if Hardware::CPU.intel?
      url "https://github.com/HGInsights/gimme-snowflake-creds/releases/download/0.4.0/gimme-snowflake-creds_0.4.0_linux_amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "1e4092f4bbb965834d8ffeb344bcdb044065aabc6ca4132026c5bb17af4d5213"
    end
  end

  def install
    bin.install "gimme-snowflake-creds"
  end
end
