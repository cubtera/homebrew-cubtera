class Cubtera < Formula
    desc "Immersive cubic dimensions experience."
    homepage "https://github.com/cubtera/cubtera"
    version "1.0.12"

    on_macos do
        if Hardware::CPU.intel?
            url "https://github.com/cubtera/cubtera/releases/download/v1.0.12/cubtera-darwin-intel.zip"
            sha256 "81d9127914e4eb9895ef8d4bb1b414e3c8e0d4a1d068d324e21cab089c4ddc0e"
        else
            url "https://github.com/cubtera/cubtera/releases/download/v1.0.12/cubtera-darwin-aarch64.zip"
            sha256 "da43a28b69ccfe890d15f987d33ac7bfeae56b02181b8ea8aa9a81cab67a93c7"
        end
    end

    on_linux do
        url "https://github.com/cubtera/cubtera/releases/download/v1.0.12/cubtera-linux-intel.zip"
        sha256 "0323052274802273da9b8260f5f46dfe9d949a7c189a80171e9090b86b11eb80"
    end

    def install
        bin.install "cubtera"
    end

    test do
        assert_match "cubtera 1.0.12", shell_output("#{bin}/cubtera --version", 2)
    end
end
