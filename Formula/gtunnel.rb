class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.45/gtunnel-macos-arm64-v0.3.45.tar.gz"
      sha256 "378b9c65d754602077aad119c25bf674ce050a1a9031f366bf6534dd77379c08"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.45/gtunnel-macos-intel-v0.3.45.tar.gz"
      sha256 "716f2f5e185f7f6b540146730306af63e2e34ad63df28a877c458af8bffc0dae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.45/gtunnel-linux-arm64-v0.3.45.tar.gz"
      sha256 "056457ccf49d58b1eafe78e3d6622f95f7f342f238ef0b6a7ab37bbca28c0b71"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.45/gtunnel-linux-amd64-v0.3.45.tar.gz"
      sha256 "f1b0085b6cf25d1c69d26e3cccf4767430fca431325aed9946a87b89e4ffa163"
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
