class Cubtera < Formula
    desc "Immersive cubic dimensions experience."
    homepage "https://github.com/cubtera/cubtera"
    version "1.0.7"

    on_macos do
        if Hardware::CPU.intel?
            url "https://github.com/cubtera/cubtera/releases/download/v1.0.7/cubtera-darwin-intel.zip"
            sha256 "be2d9770d8bbe5d78cdeec22897c58a8aa9219c968db68452bd4f279c9a89379"
        else
            url "https://github.com/cubtera/cubtera/releases/download/v1.0.7/cubtera-darwin-aarch64.zip"
            sha256 "fd62ef319bb72e05eb4d877e0f9b1d65d1232fa5fd1dafed4282fe73311f7aae"
        end
    end

    on_linux do
        url "https://github.com/cubtera/cubtera/releases/download/v1.0.7/cubtera-linux-intel.zip"
        sha256 "d019bec6e91fa485135b6b7400836c4066b9587e0939e0fe27fe82cfbd10b5ba"
    end

    def install
        bin.install "cubtera"
    end

    test do
        assert_match "cubtera 1.0.7", shell_output("#{bin}/cubtera --version", 2)
    end
end
