class Asm < Formula
  desc "TUI for browsing, previewing, and resuming Claude Code & Codex sessions"
  homepage "https://github.com/NamhaeSusan/ai-session-manager"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/NamhaeSusan/ai-session-manager/releases/download/v#{version}/asm-aarch64-apple-darwin.tar.gz"
      sha256 "f6e1d4821c8987bd5831c8bc61df265b6ac1007132e52cffdf3fd72a7bf1f271"
    end

    on_intel do
      url "https://github.com/NamhaeSusan/ai-session-manager/releases/download/v#{version}/asm-x86_64-apple-darwin.tar.gz"
      sha256 "40e5ebd09027308cbb3d1785dd5d36aa2a5a57df7270ea659c4ddbd6b0f59387"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/NamhaeSusan/ai-session-manager/releases/download/v#{version}/asm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2643d3833c5d27a99d44398efeeab57e0c2b085e464f17dccdd073f80ad7916a"
    end
  end

  def install
    bin.install "asm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/asm --version")
  end
end
