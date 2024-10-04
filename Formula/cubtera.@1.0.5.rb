class Cubtera < Formula
    desc "Immersive cubic dimensions experience."
    homepage "https://github.com/cubtera/cubtera"
    version "1.0.5"

    on_macos do
        if Hardware::CPU.intel?
            url "https://github.com/cubtera/cubtera/releases/download/v1.0.5/cubtera-darwin-intel.zip"
            sha256 "42f1015ac3048c4e61e3c077540ab963ee4870d39c3f2c07b2586eca8975fd71"
        else
            url "https://github.com/cubtera/cubtera/releases/download/v1.0.5/cubtera-darwin-aarch64.zip"
            sha256 "e8d5b5c7c342a6df4d594adebdbb4a0e2ec4d6a55ef8f530d689570bbc3675cb"
        end
    end

    on_linux do
        url "https://github.com/cubtera/cubtera/releases/download/v1.0.5/cubtera-linux-intel.zip"
        sha256 "b1e94fa15ecf2e827deca2bf6cafa919fe90687e8d9b3da32c0eeac9c5729b61"
    end

    def install
        bin.install "cubtera"
    end

    test do
        assert_match "cubtera 1.0.5", shell_output("#{bin}/cubtera --version", 2)
    end
end
