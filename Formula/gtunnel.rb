class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.39/gtunnel-macos-arm64-v0.3.39.tar.gz"
      sha256 "bac5441506701cd68ce74cf644230cf70f684062d9eda0bdba7d95ba3849d12c"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.39/gtunnel-macos-intel-v0.3.39.tar.gz"
      sha256 "ce678d01f79b54c5fc4077e60868871003992227b18306cc78c5b2bbc6e34794"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.39/gtunnel-linux-arm64-v0.3.39.tar.gz"
      sha256 "0625bae33d292cd6e7346a825a753418a03ce3c59c2e8ee44a28ae59a6ea0b75"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.39/gtunnel-linux-amd64-v0.3.39.tar.gz"
      sha256 "22e383f9e5e29a348f502581914c1b3490112ce46b8212e4af4503251519dec6"
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
