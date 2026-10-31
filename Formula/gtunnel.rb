class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.24/gtunnel-macos-arm64-v0.3.24.tar.gz"
      sha256 "fc1668dc310f9d009db774bf4e613f46bd54965fb9ed767e5cca4af29e281043"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.24/gtunnel-macos-intel-v0.3.24.tar.gz"
      sha256 "9a1214391a4eca64605dc475d8b43786d6df6d2acbca7d20a466680762f4be14"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.24/gtunnel-linux-arm64-v0.3.24.tar.gz"
      sha256 "bb5c1afb5c729005c48104b2b8d80aa690184c5278aab640b7a359fb6729e4ae"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.24/gtunnel-linux-amd64-v0.3.24.tar.gz"
      sha256 "05420db3f8cdefa2fd49156f37b29f5dec22444851e77f19f4d3c26705d9f85b"
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
