.class Lcom/heyzap/common/video/view/FullscreenVideoView$VideoSurfaceViewCallback;
.super Ljava/lang/Object;
.source "FullscreenVideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/common/video/view/FullscreenVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoSurfaceViewCallback"
.end annotation


# instance fields
.field private hasAlreadyFired:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;


# direct methods
.method private constructor <init>(Lcom/heyzap/common/video/view/FullscreenVideoView;)V
    .locals 2

    .prologue
    .line 389
    iput-object p1, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$VideoSurfaceViewCallback;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$VideoSurfaceViewCallback;->hasAlreadyFired:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/heyzap/common/video/view/FullscreenVideoView;Lcom/heyzap/common/video/view/FullscreenVideoView$1;)V
    .locals 0

    .prologue
    .line 389
    invoke-direct {p0, p1}, Lcom/heyzap/common/video/view/FullscreenVideoView$VideoSurfaceViewCallback;-><init>(Lcom/heyzap/common/video/view/FullscreenVideoView;)V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .prologue
    .line 396
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$VideoSurfaceViewCallback;->hasAlreadyFired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$VideoSurfaceViewCallback;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    invoke-virtual {v0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->resume()V

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$VideoSurfaceViewCallback;->hasAlreadyFired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 400
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$VideoSurfaceViewCallback;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    invoke-static {v0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->access$300(Lcom/heyzap/common/video/view/FullscreenVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :goto_0
    return-void

    .line 401
    :catch_0
    move-exception v0

    .line 402
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$VideoSurfaceViewCallback;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    invoke-static {v0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->access$300(Lcom/heyzap/common/video/view/FullscreenVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :goto_0
    return-void

    .line 410
    :catch_0
    move-exception v0

    .line 411
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$VideoSurfaceViewCallback;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    invoke-static {v0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->access$300(Lcom/heyzap/common/video/view/FullscreenVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$VideoSurfaceViewCallback;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    invoke-static {v0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->access$300(Lcom/heyzap/common/video/view/FullscreenVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$VideoSurfaceViewCallback;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    invoke-static {v0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->access$300(Lcom/heyzap/common/video/view/FullscreenVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 421
    :catch_0
    move-exception v0

    .line 422
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
