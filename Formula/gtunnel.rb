class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.63/gtunnel-macos-arm64-v0.2.63.tar.gz"
      sha256 "de6325e830231e387fb70c1e92b4e4efb65b9ec516e4db46d339af09e5eb33db"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.63/gtunnel-macos-intel-v0.2.63.tar.gz"
      sha256 "0e606e3fa691843d9809ae4b9f19e7b28764567a6b3b2e72ebe7b78f167553f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.63/gtunnel-linux-arm64-v0.2.63.tar.gz"
      sha256 "722502ce0ca4bad352a77b94e45d2f5acf852a46fdcb8f5ba66b74992f71618f"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.63/gtunnel-linux-amd64-v0.2.63.tar.gz"
      sha256 "51a9a703fe690763d47bcd147d13e631d5b4c240bc491d0fbfbfd040af392776"
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
