class Cubtera < Formula
    desc "Immersive cubic dimensions experience."
    homepage "https://github.com/cubtera/cubtera"
    version "1.0.11"

    on_macos do
        if Hardware::CPU.intel?
            url "https://github.com/cubtera/cubtera/releases/download/v1.0.11/cubtera-darwin-intel.zip"
            sha256 "6e417f09a2f211680b9b4e059069a3232e0eef410cea469cc4d4db9e6132f9ac"
        else
            url "https://github.com/cubtera/cubtera/releases/download/v1.0.11/cubtera-darwin-aarch64.zip"
            sha256 "afd11652d5fe048f4c71e666a68bd52ce0591f87c9f23b3c080878e5d9283f6e"
        end
    end

    on_linux do
        url "https://github.com/cubtera/cubtera/releases/download/v1.0.11/cubtera-linux-intel.zip"
        sha256 "eb33e16c9a948daca7afa4f80870ac518090ae1ac02e6493a7b9cd3a10a1b123"
    end

    def install
        bin.install "cubtera"
    end

    test do
        assert_match "cubtera 1.0.11", shell_output("#{bin}/cubtera --version", 2)
    end
end
