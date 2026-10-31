class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.23/gtunnel-macos-arm64-v0.3.23.tar.gz"
      sha256 "ff414ff86d888ca4b71228edc95faa39a838dff6f683a659d12303b959233913"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.23/gtunnel-macos-intel-v0.3.23.tar.gz"
      sha256 "7bc24cfdad77652c5f21f737e7b28c7f105d3482e0a7ed12549af56322b1f00b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.23/gtunnel-linux-arm64-v0.3.23.tar.gz"
      sha256 "29045848c9f875210ba2a3c520c275d45d513f5b19af5b681a660243cd056b9d"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.23/gtunnel-linux-amd64-v0.3.23.tar.gz"
      sha256 "6bd2d48b38426e39b08c60b39147401910d0786e284fa132c7bd2abbe1e2f49d"
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
