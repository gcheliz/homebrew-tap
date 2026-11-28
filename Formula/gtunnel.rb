class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.52/gtunnel-macos-arm64-v0.3.52.tar.gz"
      sha256 "334245c8f3e08162c8af7d22f9cf8b465b008e0c9467949f16fa67cdc452e18a"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.52/gtunnel-macos-intel-v0.3.52.tar.gz"
      sha256 "0a33689fd9ce8ef7a1d6dc80c32de7cbe5b36b934dd7dc7466450249fb3d1a60"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.52/gtunnel-linux-arm64-v0.3.52.tar.gz"
      sha256 "fd8caf52463e0f1191abcb11be0d709cd32b241530c172d20f8150ab4b828c40"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.52/gtunnel-linux-amd64-v0.3.52.tar.gz"
      sha256 "8a4afadcde9325d7357dfa07c30a60832a0339f09e55ebb64872879da3c4f8e8"
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
