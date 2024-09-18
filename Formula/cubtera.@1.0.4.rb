class Cubtera < Formula
    desc "Immersive cubic dimensions experience."
    homepage "https://github.com/cubtera/cubtera"
    version "1.0.4"

    on_macos do
        if Hardware::CPU.intel?
            url "https://github.com/cubtera/cubtera/releases/download/v1.0.4/cubtera-darwin-intel.zip"
            sha256 "49472f42b011918e644aecbdaa49b2a8d1ad897fa878b425ba647258ba6bc6c4"
        else
            url "https://github.com/cubtera/cubtera/releases/download/v1.0.4/cubtera-darwin-aarch64.zip"
            sha256 "d5aa941d35323472ad4072def12142e127833f08fb01cfd49729288a2ee09818"
        end
    end

    on_linux do
        url "https://github.com/cubtera/cubtera/releases/download/v1.0.4/cubtera-linux-intel.zip"
        sha256 "a37c63c62efff7a782cf48457d5a8451e81de434f45d93af6a08a716163e1538"
    end

    def install
        bin.install "cubtera"
    end

    test do
        assert_match "cubtera 1.0.4", shell_output("#{bin}/cubtera --version", 2)
    end
end
