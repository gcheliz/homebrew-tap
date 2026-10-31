class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.21/gtunnel-macos-arm64-v0.3.21.tar.gz"
      sha256 "9589e2498a7e02e98ab3b91535a5f948fee84690c7cc072fae5a7e052155bb62"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.21/gtunnel-macos-intel-v0.3.21.tar.gz"
      sha256 "9a98b1e10a3a0926972a985980dcafded78ca10ca036459afbeb344104707a2a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.21/gtunnel-linux-arm64-v0.3.21.tar.gz"
      sha256 "f8a27cde750cd905960b0f4a351e0cd8d3e0a02d5b27e1f97b884b3279500d0c"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.21/gtunnel-linux-amd64-v0.3.21.tar.gz"
      sha256 "e8a9b0407693363e396091cae5124e54b7263eb3971f8d04d55db3ee6152d3aa"
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
