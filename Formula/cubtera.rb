class Cubtera < Formula
  desc "Immersive cubic dimensions experience."
  homepage "https://github.com/cubtera/cubtera"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cubtera/cubtera/releases/download/v0.1.0/cubtera-darwin-intel.zip"
      sha256 "" # Intel macOS
    else
      url "test/test/test/cubtera-darwin-aarch64.zip"
      sha256 "4b7cd379cff3f0661d851a0f032d93423865e490d15a7e8bd83b86d9d02e9797" # M1 macOS
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/cubtera/cubtera/releases/download/v0.1.0/cubtera.zip"
      sha256 "a0f6fc1860ba5a3cc3542d9661bdfdcd72e9d5355d026a9c10dd2271f5eb1c02"
    else
      url "https://github.com/cubtera/cubtera/releases/download/v0.1.0/cubtera.zip"
      sha256 "a0f6fc1860ba5a3cc3542d9661bdfdcd72e9d5355d026a9c10dd2271f5eb1c02"

  end

  def install
    bin.install "cubtera" #=> "cubtera"
  end

  test do
    assert_match "cubtera 0.2.0", shell_output("#{bin}/cubtera --version", 2)
  end
end
