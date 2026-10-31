class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.19/gtunnel-macos-arm64-v0.3.19.tar.gz"
      sha256 "de5469d25b150fe1a1cf35069a51a78f46c9ec0f8fcd7581e0967151e4209f1a"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.19/gtunnel-macos-intel-v0.3.19.tar.gz"
      sha256 "844684b4aa99892ed207cba2da536acaa6e9bbb3cc6222fa14b4f18e959e4f59"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.19/gtunnel-linux-arm64-v0.3.19.tar.gz"
      sha256 "ef0d3ac71f8d2d5259b9a95758efb83ac612d268410b01462129f0361e60ae80"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.19/gtunnel-linux-amd64-v0.3.19.tar.gz"
      sha256 "c82ceaeb9aac998f704c84d4a6086f2a6d4eafc6bf7013746d04e926b6841748"
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
