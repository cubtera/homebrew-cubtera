class Cubtera < Formula
    desc "Immersive cubic dimensions experience."
    homepage "https://github.com/cubtera/cubtera"
    version "1.0.8"

    on_macos do
        if Hardware::CPU.intel?
            url "https://github.com/cubtera/cubtera/releases/download/v1.0.8/cubtera-darwin-intel.zip"
            sha256 "da712ac93277aac409ffa15e7589e395a1b4f8f3960deeff65d954776bcd7cae"
        else
            url "https://github.com/cubtera/cubtera/releases/download/v1.0.8/cubtera-darwin-aarch64.zip"
            sha256 "2f087b4135151c0b0170b571bc14e32d2d90385987a40a9b4b8dd87feee7bfbd"
        end
    end

    on_linux do
        url "https://github.com/cubtera/cubtera/releases/download/v1.0.8/cubtera-linux-intel.zip"
        sha256 "e16995e448f5d6c7f78ee12032dfcd76249b3b889e636c5b51325a2ad072eb1c"
    end

    def install
        bin.install "cubtera"
    end

    test do
        assert_match "cubtera 1.0.8", shell_output("#{bin}/cubtera --version", 2)
    end
end
