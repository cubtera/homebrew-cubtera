class Cubtera < Formula
    desc "Immersive cubic dimensions experience."
    homepage "https://github.com/cubtera/cubtera"
    version "VERSION"

    on_macos do
        if Hardware::CPU.intel?
            url "https://github.com/cubtera/cubtera/releases/download/vVERSION/cubtera-darwin-intel.zip"
            sha256 "MAC_INTEL_ZIP_SHA"
        else
            url "https://github.com/cubtera/cubtera/releases/download/vVERSION/cubtera-darwin-aarch64.zip"
            sha256 "MAC_AARCH_ZIP_SHA"
        end
    end

    on_linux do
        url "https://github.com/cubtera/cubtera/releases/download/vVERSION/cubtera-linux-intel.zip"
        sha256 "LINUX_INTEL_ZIP_SHA"
    end

    def install
        bin.install "cubtera"
    end

    test do
        assert_match "cubtera VERSION", shell_output("#{bin}/cubtera --version", 2)
    end
end
