class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.25/gtunnel-macos-arm64-v0.3.25.tar.gz"
      sha256 "fffe35bf35c4e3286991b5a2ed36b390d558567b2ca4ef3efd6118def1c09460"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.25/gtunnel-macos-intel-v0.3.25.tar.gz"
      sha256 "7556c060a05489cd85a8c64a38765faf70d1aed0c885cea1903ed979d7fdd98e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.25/gtunnel-linux-arm64-v0.3.25.tar.gz"
      sha256 "65af5c6ed2e306fe0ec390408da93bfb331d1fa84b54cfe245ee7c495d8d78c2"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.25/gtunnel-linux-amd64-v0.3.25.tar.gz"
      sha256 "e7a46181f18d537aa36c242148eb4066c2aef94838fe46cbb0d855bdd29ffd8b"
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
