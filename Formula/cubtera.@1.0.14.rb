class Cubtera < Formula
    desc "Immersive cubic dimensions experience."
    homepage "https://github.com/cubtera/cubtera"
    version "1.0.14"

    on_macos do
        if Hardware::CPU.intel?
            url "https://github.com/cubtera/cubtera/releases/download/v1.0.14/cubtera-darwin-intel.zip"
            sha256 "681fbbcfcbdf7f10447523db037f176fd458559d7bebaec1f0012d84ccc5fe48"
        else
            url "https://github.com/cubtera/cubtera/releases/download/v1.0.14/cubtera-darwin-aarch64.zip"
            sha256 "15c1a5d15068d274bda7c7094a117b10c7ef712f5f24d80aa137d10830ca585b"
        end
    end

    on_linux do
        url "https://github.com/cubtera/cubtera/releases/download/v1.0.14/cubtera-linux-intel.zip"
        sha256 "ad05bd21fcf9af2a398a2a288445cd12c8f99437e08ec9b05f95ce9fe5e8bdff"
    end

    def install
        bin.install "cubtera"
    end

    test do
        assert_match "cubtera 1.0.14", shell_output("#{bin}/cubtera --version", 2)
    end
end
