class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.43/gtunnel-macos-arm64-v0.3.43.tar.gz"
      sha256 "231093eed4957433b47d2cf77a1daac91bf02f1ef131446703e43a7c21cd7fdb"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.43/gtunnel-macos-intel-v0.3.43.tar.gz"
      sha256 "ec8ba88779c478b79a33ae5abafe0caeb9cc2606323d394c3685bf6035f84788"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.43/gtunnel-linux-arm64-v0.3.43.tar.gz"
      sha256 "fbdff10d11bcd9e08633356baa2ba2e4e0641fdfd852544dd62d1457d82801d0"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.43/gtunnel-linux-amd64-v0.3.43.tar.gz"
      sha256 "5b80234fe6a280d81dee5d8984f95186dcd2a1737279d1fd7ba70ecf6b55106f"
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
