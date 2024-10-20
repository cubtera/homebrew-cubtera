class Cubtera < Formula
    desc "Immersive cubic dimensions experience."
    homepage "https://github.com/cubtera/cubtera"
    version "1.0.9"

    on_macos do
        if Hardware::CPU.intel?
            url "https://github.com/cubtera/cubtera/releases/download/v1.0.9/cubtera-darwin-intel.zip"
            sha256 "ccd14f43292a5e2165f28843e8197b028b22710c91406c1be605635a83d292f6"
        else
            url "https://github.com/cubtera/cubtera/releases/download/v1.0.9/cubtera-darwin-aarch64.zip"
            sha256 "71fc597f20174991a9a55ccfd3fc809b11ad96699ccf67151631b94c23a5daad"
        end
    end

    on_linux do
        url "https://github.com/cubtera/cubtera/releases/download/v1.0.9/cubtera-linux-intel.zip"
        sha256 "8f4bd4de7d7213a6bec2affe02fdb5e87a3c8899931b1b4f29b45c19bae1d63f"
    end

    def install
        bin.install "cubtera"
    end

    test do
        assert_match "cubtera 1.0.9", shell_output("#{bin}/cubtera --version", 2)
    end
end
