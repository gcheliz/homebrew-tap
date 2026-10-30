class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.6/gtunnel-macos-arm64-v0.3.6.tar.gz"
      sha256 "67aa361ebf438ca9e0fdb83b4b95b21997b0d78541a76e60fdfb508b0aad52ff"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.6/gtunnel-macos-intel-v0.3.6.tar.gz"
      sha256 "ed779eb309e5b3915fb274a4e2b9d0cca5b590901b54cfa8e71ba73c620b2527"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.6/gtunnel-linux-arm64-v0.3.6.tar.gz"
      sha256 "89cbea497f3245804ed55ca406dd4d145805ada55cf829bfdf041b3dd4868729"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.6/gtunnel-linux-amd64-v0.3.6.tar.gz"
      sha256 "4fa936b1504c1984f5abc54f0d245ba38e7e0780ffcf7175ddee9b16e9d31115"
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
