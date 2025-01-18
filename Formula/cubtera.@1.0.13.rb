class Cubtera < Formula
    desc "Immersive cubic dimensions experience."
    homepage "https://github.com/cubtera/cubtera"
    version "1.0.13"

    on_macos do
        if Hardware::CPU.intel?
            url "https://github.com/cubtera/cubtera/releases/download/v1.0.13/cubtera-darwin-intel.zip"
            sha256 "5cde599072e38c87bdd41fbf09a026eec5807d44a30f254f502a64dad02e44af"
        else
            url "https://github.com/cubtera/cubtera/releases/download/v1.0.13/cubtera-darwin-aarch64.zip"
            sha256 "be5d71ade9aef69787bb6b27d4cacd594b48d7dd52e47e2555572b3e6e3f39cb"
        end
    end

    on_linux do
        url "https://github.com/cubtera/cubtera/releases/download/v1.0.13/cubtera-linux-intel.zip"
        sha256 "8bb690d45890f27a5a03f582c1dfbf14ac74160c4ca0d15e6776aca27639dd1e"
    end

    def install
        bin.install "cubtera"
    end

    test do
        assert_match "cubtera 1.0.13", shell_output("#{bin}/cubtera --version", 2)
    end
end
