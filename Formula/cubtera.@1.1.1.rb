class Cubtera < Formula
    desc "Immersive cubic dimensions experience."
    homepage "https://github.com/cubtera/cubtera"
    version "1.1.1"

    on_macos do
        if Hardware::CPU.intel?
            url "https://github.com/cubtera/cubtera/releases/download/v1.1.1/cubtera-darwin-intel.zip"
            sha256 "204f17fb5cc9225baaf574b8bec60f3104ed24772d633bedf14552d18136a514"
        else
            url "https://github.com/cubtera/cubtera/releases/download/v1.1.1/cubtera-darwin-aarch64.zip"
            sha256 "e7ae96a701c9ce3cf5bdba9bf6abccbb076aef81daac904032e84cd862e7bf73"
        end
    end

    on_linux do
        url "https://github.com/cubtera/cubtera/releases/download/v1.1.1/cubtera-linux-intel.zip"
        sha256 "85c4a136bd4fda870e2b6dfd984622c2df70ed9ae2366350275ae0c27781992f"
    end

    def install
        bin.install "cubtera"
    end

    test do
        assert_match "cubtera 1.1.1", shell_output("#{bin}/cubtera --version", 2)
    end
end
