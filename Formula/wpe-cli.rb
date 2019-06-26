# This file was generated by GoReleaser. DO NOT EDIT.
class WpeCli < Formula
  desc "WP Engine DevKit Command Line Interface"
  homepage "https://wpengine.com"
  version "0.13.3"

  if OS.mac?
    url "https://s3-us-east-2.amazonaws.com/wpeclibinaries/wpe-cli/v0.13.3/wpe-cli_0.13.3_darwin_amd64.tar.gz"
    sha256 "683c41031a055da7bb137632deaaba5d9471ee724cc353c4d8ad847ec8533cfe"
  elsif OS.linux?
    url "https://s3-us-east-2.amazonaws.com/wpeclibinaries/wpe-cli/v0.13.3/wpe-cli_0.13.3_linux_amd64.tar.gz"
    sha256 "d982b9df36e268e712ce86e43111edd910102e986a892f2bc722805fc1f9bf13"
  end

  def install
    bin.install "wpe"
  end

  test do
    system "#{bin}/wpe version"
  end
end
