class Asm < Formula
  desc "TUI for browsing, previewing, and resuming Claude Code & Codex sessions"
  homepage "https://github.com/NamhaeSusan/ai-session-manager"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/NamhaeSusan/ai-session-manager/releases/download/v#{version}/asm-aarch64-apple-darwin.tar.gz"
      sha256 "291908900a9b98868716d70680e88e875e7f7760a49d11705d8a5604359caa1f"
    end

    on_intel do
      url "https://github.com/NamhaeSusan/ai-session-manager/releases/download/v#{version}/asm-x86_64-apple-darwin.tar.gz"
      sha256 "82bf044c2e2997ed386871a6f0e604efcae0da332436a9a4bc524ace1483cf07"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/NamhaeSusan/ai-session-manager/releases/download/v#{version}/asm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d3ac930934f7790a75efe6fb32f76903ef748248da54153dce11e59d3163c58f"
    end
  end

  def install
    bin.install "asm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/asm --version")
  end
end
