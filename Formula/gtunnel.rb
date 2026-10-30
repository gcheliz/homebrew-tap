class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.59/gtunnel-macos-arm64-v0.2.59.tar.gz"
      sha256 "892cc75da35ecc43c61b04310bcea45ab634245634fc05ac19d5d63c26823a25"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.59/gtunnel-macos-intel-v0.2.59.tar.gz"
      sha256 "f1446987c4dc93ab95b3ca892a1fbeb00ea30b24c49288ff21ca1c138fc46c39"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.59/gtunnel-linux-arm64-v0.2.59.tar.gz"
      sha256 "e68f3a1398957b7d9cef04cc4057cfe82733073e24aa73b03372bbfb33c9ee16"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.59/gtunnel-linux-amd64-v0.2.59.tar.gz"
      sha256 "5d482cad11de6f0380d0cd0dc2652356021b1ac6bf7f9c53cfdda8b1bac255dc"
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
