class CubteraBeta < Formula
  desc "Cubtera CLI tool (Beta version)"
  homepage "https://github.com/cubtera/cubtera"
  version "1.0.15-beta.pr42"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cubtera/cubtera/releases/download/v1.0.15-beta.pr42/cubtera-darwin-intel-beta.zip"
      sha256 "95b4ea3c353222abb4bbbbd44abea297c209be4b1405e84f81341751c5bcae5b"
    else
      url "https://github.com/cubtera/cubtera/releases/download/v1.0.15-beta.pr42/cubtera-darwin-aarch64-beta.zip"
      sha256 "e578c178cace32c2fb5b7de1dc102d8936c80744ff985bb79cae1115d5c31a5e"
    end
  end

  on_linux do
    url "https://github.com/cubtera/cubtera/releases/download/v1.0.15-beta.pr42/cubtera-linux-intel-beta.zip"
    sha256 "e82c4c8dc56ff87702508dd0bacf381b9649d96510c4618745bd951cc1448f5e"
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
