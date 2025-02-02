class Cubtera < Formula
    desc "Immersive cubic dimensions experience."
    homepage "https://github.com/cubtera/cubtera"
    version "1.0.15"

    on_macos do
        if Hardware::CPU.intel?
            url "https://github.com/cubtera/cubtera/releases/download/v1.0.15/cubtera-darwin-intel.zip"
            sha256 "2d7a53ad8ac43f1ae1bad3c377d6eaf6529a2809b41a8ca7b6664ce7c20a3ad2"
        else
            url "https://github.com/cubtera/cubtera/releases/download/v1.0.15/cubtera-darwin-aarch64.zip"
            sha256 "b53c2d07615b8968b05f55f236f7448cc019bd92c2aa91e55fa3a52514ee05f4"
        end
    end

    on_linux do
        url "https://github.com/cubtera/cubtera/releases/download/v1.0.15/cubtera-linux-intel.zip"
        sha256 "0a70d9e472bcb37d7d7cc4bdb8bc6c2e5a0e5e87bb7626d6ae9aae6b1ecc8b62"
    end

    def install
        bin.install "cubtera"
    end

    test do
        assert_match "cubtera 1.0.15", shell_output("#{bin}/cubtera --version", 2)
    end
end
