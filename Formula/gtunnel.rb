class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.8/gtunnel-macos-arm64-v0.3.8.tar.gz"
      sha256 "bb21124cf34b068098643a5fbb43a25dbca315b14790baa8df393a31d7a1e7ef"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.8/gtunnel-macos-intel-v0.3.8.tar.gz"
      sha256 "76f77e065150e9ac8d151994440c74b75e2c0ab116b807e9d30da9d8e355c634"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.8/gtunnel-linux-arm64-v0.3.8.tar.gz"
      sha256 "684e61e60a1c177a328a23b47c0c9ec553662e3b875605002bf6b2a1e5c8c03d"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.8/gtunnel-linux-amd64-v0.3.8.tar.gz"
      sha256 "c0c9ceddcf8398799706ce338678e4977eef81cb0050eaf03c4509682622ad08"
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
