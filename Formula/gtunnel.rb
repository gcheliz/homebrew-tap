class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.2/gtunnel-macos-arm64-v0.3.2.tar.gz"
      sha256 "0d315b915de5846a4cd082b9ac5abb6de594ef49a22e950b22d5d82f997aebd2"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.2/gtunnel-macos-intel-v0.3.2.tar.gz"
      sha256 "beeb0a34ae97b28911e5ac0b52e1269370c176c5c884dfbbdaddbbc99f1962b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.2/gtunnel-linux-arm64-v0.3.2.tar.gz"
      sha256 "1c2475306e7b53fec07364225aa18df040a2fbb24d6f4094bdcc69fb1097308f"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.2/gtunnel-linux-amd64-v0.3.2.tar.gz"
      sha256 "17b430ef05694c3357a640de100a553e0e227235df3e73ef2218c6c48b7c8c35"
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
