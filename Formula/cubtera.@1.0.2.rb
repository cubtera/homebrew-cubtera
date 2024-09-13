class Cubtera < Formula
    desc "Immersive cubic dimensions experience."
    homepage "https://github.com/cubtera/cubtera"
    version "1.0.2"

    on_macos do
        if Hardware::CPU.intel?
            url "https://github.com/cubtera/cubtera/releases/download/v1.0.2/cubtera-darwin-intel.zip"
            sha256 "2d9f72a7a2968d0dbf4155c3dcd9ed9f67a20e43640b109298ca76d432e3372a"
        else
            url "https://github.com/cubtera/cubtera/releases/download/v1.0.2/cubtera-darwin-aarch64.zip"
            sha256 "02eb4a8db3d57d562f924afac6a4297c4d6e6abc77d20f73e971ed709f4b42b4"
        end
    end

    on_linux do
        url "https://github.com/cubtera/cubtera/releases/download/v1.0.2/cubtera-linux-intel.zip"
        sha256 "b589b4b22ab2c9f1166eab3f38b48e7e22c920f0dec34c8a71bc5346d7dc1417"
    end

    def install
        bin.install "cubtera"
    end

    test do
        assert_match "cubtera 1.0.2", shell_output("#{bin}/cubtera --version", 2)
    end
end
