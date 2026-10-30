class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.67/gtunnel-macos-arm64-v0.2.67.tar.gz"
      sha256 "09d9937690d647d072e92491d6217fe467830b703b17e4fa2cedbe148f47255d"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.67/gtunnel-macos-intel-v0.2.67.tar.gz"
      sha256 "1d72b98b03df4e01879848d3f6fe578f65be6a2f8ace87b55f32cfb6113bf8eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.67/gtunnel-linux-arm64-v0.2.67.tar.gz"
      sha256 "1fee1a7566f1b581455a1f01df46c529cb97d03f23b71ebbd6a54cd8a47bd9e7"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.67/gtunnel-linux-amd64-v0.2.67.tar.gz"
      sha256 "c97b9ff9f24d2ceb44d7a9e0e7204263bfcae1f7f8575feb96189a1e46c068bc"
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
