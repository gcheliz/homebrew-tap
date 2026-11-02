class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.30/gtunnel-macos-arm64-v0.3.30.tar.gz"
      sha256 "96aa98abbf86d019c7f94e2b55b73abaed4e4e6e7712f1e7569ca8da960b6664"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.30/gtunnel-macos-intel-v0.3.30.tar.gz"
      sha256 "1ac922809eaf5621132005b7e1426be6511f765fcb7394f4aa9b47c02b85fac6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.30/gtunnel-linux-arm64-v0.3.30.tar.gz"
      sha256 "cdfc4f9d3c74afc87944d38278920a0d52e8e41c1da3911d4ef77e293a5349f9"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.30/gtunnel-linux-amd64-v0.3.30.tar.gz"
      sha256 "39ad922bb8c25405321c2eeb567bda809bedfdcd6843925adbc7c7f8e5568468"
    end
  end

  def install
    bin.install "gtunnel"
    generate_completions_from_executable(bin/"gtunnel", "completions")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gtunnel --version")
  end
end
