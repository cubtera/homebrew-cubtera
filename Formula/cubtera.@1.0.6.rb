class Cubtera < Formula
    desc "Immersive cubic dimensions experience."
    homepage "https://github.com/cubtera/cubtera"
    version "1.0.6"

    on_macos do
        if Hardware::CPU.intel?
            url "https://github.com/cubtera/cubtera/releases/download/v1.0.6/cubtera-darwin-intel.zip"
            sha256 "d1ca44c49b22bc30087fef4c29d13ca7ab10bb699c5a6563c1b37a6659609d15"
        else
            url "https://github.com/cubtera/cubtera/releases/download/v1.0.6/cubtera-darwin-aarch64.zip"
            sha256 "992a03b848e7cccf64cac09ce92e2e58f0057307b4eca80373ae460bb9841db4"
        end
    end

    on_linux do
        url "https://github.com/cubtera/cubtera/releases/download/v1.0.6/cubtera-linux-intel.zip"
        sha256 "094b6906f2a2011bcfd302eb591b1c52f4c06d6c929b94ebc81c1664abb5e780"
    end

    def install
        bin.install "cubtera"
    end

    test do
        assert_match "cubtera 1.0.6", shell_output("#{bin}/cubtera --version", 2)
    end
end
