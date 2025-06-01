class CubteraBeta < Formula
  desc "Cubtera CLI tool (Beta version)"
  homepage "https://github.com/cubtera/cubtera"
  version "1.0.15-beta.pr42"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cubtera/cubtera/releases/download/v1.0.15-beta.pr42/cubtera-darwin-intel-beta.zip"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    else
      url "https://github.com/cubtera/cubtera/releases/download/v1.0.15-beta.pr42/cubtera-darwin-aarch64-beta.zip"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  on_linux do
    url "https://github.com/cubtera/cubtera/releases/download/v1.0.15-beta.pr42/cubtera-linux-intel-beta.zip"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  def install
    bin.install "cubtera"
  end

  test do
    assert_match "cubtera 1.0.15-beta.pr42", shell_output("#{bin}/cubtera --version", 2)
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
