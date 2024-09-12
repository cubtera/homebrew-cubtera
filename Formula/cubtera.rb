# TODO: create github action in main repo for update this formula to be dynamic
class Cubtera < Formula
  desc "Immersive cubic dimensions experience."
  homepage "https://github.com/cubtera/cubtera"
  head "https://github.com/cubtera/cubtera.git"
  url "*mac.tar.gz" # ADD proper link
  sha256 "<ADD SHA>"
  version "4.0.0"

  def install
    bin.install "cubtera"
  end

  test do
    assert_match "cubtera version 4.0.0", shell_output("#{bin}/cubtera --version", 2)
  end
end
