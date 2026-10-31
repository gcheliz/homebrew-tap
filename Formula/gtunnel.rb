class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.18/gtunnel-macos-arm64-v0.3.18.tar.gz"
      sha256 "43a403947100bbd5a59f1308cf86e523c4e45ddbee6d97200d47de2121a3d8c0"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.18/gtunnel-macos-intel-v0.3.18.tar.gz"
      sha256 "896f62901a8a313053c636d47eaf78f96e14bb52c3f479071f153a422368040c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.18/gtunnel-linux-arm64-v0.3.18.tar.gz"
      sha256 "39391d50baa1fc0135069ec44f994f4159aa78c060cb7c6136fbdf29f9995236"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.18/gtunnel-linux-amd64-v0.3.18.tar.gz"
      sha256 "d0125fba5f9ce6d13b02317b88f8158747b764addd435ae78c27e8979dff2755"
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
