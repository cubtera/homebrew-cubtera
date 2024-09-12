# TODO: create github action in main repo for update this formula to be dynamic
class Cubtera < Formula
  desc "Immersive cubic dimensions experience."
  homepage "https://github.com/cubtera/cubtera"
  head "https://github.com/cubtera/cubtera.git"
  url "https://github.com/cubtera/cubtera/releases/download/v0.1.0/cubtera-mac-aarch64.tar.gz"
  sha256 "72825c6e5ca0be20082aa1c7f5ac98f0a90cb95be2f07c2f2216014f5fbb86c3"
  version "0.1.0"

  def install
    bin.install "terget/aarch64-apple-darwin/release/cubtera"
  end

  test do
    assert_match "cubtera 0.1.0", shell_output("#{bin}/cubtera --version", 2)
  end
end
