.class Lcom/heyzap/common/video/view/FullscreenVideoView$1;
.super Ljava/util/TimerTask;
.source "FullscreenVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/common/video/view/FullscreenVideoView;->onVideoStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;


# direct methods
.method constructor <init>(Lcom/heyzap/common/video/view/FullscreenVideoView;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$1;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$1;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    invoke-virtual {v0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->onVideoTick()V

    .line 157
    return-void
.end method
