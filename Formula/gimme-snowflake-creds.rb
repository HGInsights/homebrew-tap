# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../custom_download_strategy"
class GimmeSnowflakeCreds < Formula
  desc "Okta > OAuth > Snowflake > Creds"
  homepage "https://github.com/hginsights/gimme-snowflake-creds"
  version "0.3.5"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/HGInsights/gimme-snowflake-creds/releases/download/0.3.5/gimme-snowflake-creds_0.3.5_darwin_amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "b79e57b8280eece1cc0675606bb1549b3f995a9be2322a27c2920c9bd29ecf68"
    end
    if Hardware::CPU.arm?
      url "https://github.com/HGInsights/gimme-snowflake-creds/releases/download/0.3.5/gimme-snowflake-creds_0.3.5_darwin_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "9a93b5a412552624660bc874ca520bd9e1094de0d6d7d962a2f8a2020c9506af"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/HGInsights/gimme-snowflake-creds/releases/download/0.3.5/gimme-snowflake-creds_0.3.5_linux_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "9eb6320a90c62473b299b03c69462e9874eb03101c8184ccedd08bb89380de5f"
    end
    if Hardware::CPU.intel?
      url "https://github.com/HGInsights/gimme-snowflake-creds/releases/download/0.3.5/gimme-snowflake-creds_0.3.5_linux_amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "bde5d9b3be4c7b96a1a1d703c85c8a5a9e6aa8eaf37d5841a799a83010a6bf5f"
    end
  end

  def install
    bin.install "gimme-snowflake-creds"
  end
end
