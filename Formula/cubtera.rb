class Cubtera < Formula
    desc "Immersive cubic dimensions experience."
    homepage "https://github.com/cubtera/cubtera"
    version "1.0.1"

    on_macos do
        if Hardware::CPU.intel?
            url "https://github.com/cubtera/cubtera/releases/download/v1.0.1/cubtera-darwin-intel.zip"
            sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
        else
            url "https://github.com/cubtera/cubtera/releases/download/v1.0.1/cubtera-darwin-aarch64.zip"
            sha256 ""
        end
    end

    on_linux do
        url "https://github.com/cubtera/cubtera/releases/download/v1.0.1/cubtera-linux-intel.zip"
        sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end

    def install
        bin.install "cubtera"
    end

    test do
        assert_match "cubtera 1.0.1", shell_output("#{bin}/cubtera --version", 2)
    end
end
