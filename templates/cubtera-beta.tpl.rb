class CubteraBeta < Formula
  desc "Cubtera CLI tool (Beta version)"
  homepage "https://github.com/cubtera/cubtera"
  version "VERSION"
  
  on_macos do
    url "https://github.com/cubtera/cubtera/releases/download/vVERSION/cubtera-darwin-aarch64-beta.zip"
    sha256 "MAC_AARCH_ZIP_SHA"
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/cubtera/cubtera/releases/download/vVERSION/cubtera-linux-intel-beta.zip"
      sha256 "LINUX_INTEL_ZIP_SHA"
    else
      url "https://github.com/cubtera/cubtera/releases/download/vVERSION/cubtera-darwin-aarch64-beta.zip"
      sha256 "LINUX_ARM64_SHA256_ZIP"
  end

  def install
    bin.install "cubtera"
  end

  test do
    assert_match "cubtera VERSION", shell_output("#{bin}/cubtera --version", 2)
  end

  def caveats
    pr_number = version.to_s.match(/pr(\d+)/)[1]
    <<~EOS
      This is a BETA version of Cubtera from PR ##{pr_number}.
      
      Beta versions may be unstable and are intended for testing purposes only.
      Use at your own risk in production environments.
      
      To install the stable version instead:
        brew uninstall cubtera-beta
        brew install cubtera/cubtera/cubtera
        
      To switch between beta versions:
        brew uninstall cubtera-beta
        brew install cubtera/cubtera/cubtera-beta
    EOS
  end
end 
