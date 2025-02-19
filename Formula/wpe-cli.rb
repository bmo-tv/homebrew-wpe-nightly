# This file was generated by GoReleaser. DO NOT EDIT.
class WpeCli < Formula
  desc "WP Engine DevKit Command Line Interface"
  homepage "https://wpengine.com"
  version "0.13.9"
  bottle :unneeded

  if OS.mac?
    url "https://s3-us-east-2.amazonaws.com/wpeclibinaries/wpe-cli/v0.13.9/wpe-cli_0.13.9_darwin_amd64.tar.gz"
    sha256 "477dc22b5ffa84ce7cdca90812bb3b85d1563a6d0e15d6cacb117e317e9f0055"
  elsif OS.linux?
    url "https://s3-us-east-2.amazonaws.com/wpeclibinaries/wpe-cli/v0.13.9/wpe-cli_0.13.9_linux_amd64.tar.gz"
    sha256 "52a89251ff19a808661a363fbff8bb6f3a41acf60d09d26eaa65438d838c1d54"
  end

  devel do
    url "https://s3-us-east-2.amazonaws.com/wpeclinightly/wpe-cli/nightly/wpe-cli_nightly_darwin_amd64.tar.gz"
  end

  def install
    bin.install "wpe"
  end

  test do
    system "#{bin}/wpe version"
  end
end
