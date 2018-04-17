.class Lcom/heyzap/common/video/view/FullscreenVideoView$MediaPlayerListener;
.super Ljava/lang/Object;
.source "FullscreenVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/common/video/view/FullscreenVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaPlayerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;


# direct methods
.method private constructor <init>(Lcom/heyzap/common/video/view/FullscreenVideoView;)V
    .locals 0

    .prologue
    .line 486
    iput-object p1, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$MediaPlayerListener;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/heyzap/common/video/view/FullscreenVideoView;Lcom/heyzap/common/video/view/FullscreenVideoView$1;)V
    .locals 0

    .prologue
    .line 486
    invoke-direct {p0, p1}, Lcom/heyzap/common/video/view/FullscreenVideoView$MediaPlayerListener;-><init>(Lcom/heyzap/common/video/view/FullscreenVideoView;)V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$MediaPlayerListener;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    iput p2, v0, Lcom/heyzap/common/video/view/FullscreenVideoView;->bufferProgress:I

    .line 562
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$MediaPlayerListener;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    iget-object v0, v0, Lcom/heyzap/common/video/view/FullscreenVideoView;->playbackTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 567
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$MediaPlayerListener;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    iget-object v0, v0, Lcom/heyzap/common/video/view/FullscreenVideoView;->playbackTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 569
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$MediaPlayerListener;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    invoke-static {v0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->access$400(Lcom/heyzap/common/video/view/FullscreenVideoView;)Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$MediaPlayerListener;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    invoke-static {v0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->access$400(Lcom/heyzap/common/video/view/FullscreenVideoView;)Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;->completed()V

    .line 572
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4

    .prologue
    .line 508
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$MediaPlayerListener;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    iget-object v0, v0, Lcom/heyzap/common/video/view/FullscreenVideoView;->loadingSpinner:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$MediaPlayerListener;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    iget-object v0, v0, Lcom/heyzap/common/video/view/FullscreenVideoView;->loadingSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 510
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$MediaPlayerListener;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/heyzap/common/video/view/FullscreenVideoView;->loadingSpinner:Landroid/app/ProgressDialog;

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$MediaPlayerListener;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    iget-object v0, v0, Lcom/heyzap/common/video/view/FullscreenVideoView;->playbackTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 514
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$MediaPlayerListener;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    iget-object v0, v0, Lcom/heyzap/common/video/view/FullscreenVideoView;->playbackTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 519
    packed-switch p2, :pswitch_data_0

    .line 525
    const-string v0, "Unknown"

    move-object v1, v0

    .line 529
    :goto_0
    sparse-switch p3, :sswitch_data_0

    .line 546
    const-string v0, "Unknown."

    .line 550
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer Error! What: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Extra: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$MediaPlayerListener;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    invoke-static {v0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->access$400(Lcom/heyzap/common/video/view/FullscreenVideoView;)Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 553
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$MediaPlayerListener;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    invoke-static {v0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->access$400(Lcom/heyzap/common/video/view/FullscreenVideoView;)Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;->error()V

    .line 556
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 521
    :pswitch_0
    const-string v0, "Server Died."

    move-object v1, v0

    .line 522
    goto :goto_0

    .line 531
    :sswitch_0
    const-string v0, "Unsupported."

    goto :goto_1

    .line 534
    :sswitch_1
    const-string v0, "Timed Out."

    goto :goto_1

    .line 537
    :sswitch_2
    const-string v0, "Not Valid for Progressive Playback."

    goto :goto_1

    .line 540
    :sswitch_3
    const-string v0, "Malformed."

    goto :goto_1

    .line 543
    :sswitch_4
    const-string v0, "Error IO."

    goto :goto_1

    .line 519
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch

    .line 529
    :sswitch_data_0
    .sparse-switch
        -0x3f2 -> :sswitch_0
        -0x3ef -> :sswitch_3
        -0x3ec -> :sswitch_4
        -0x6e -> :sswitch_1
        0xc8 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$MediaPlayerListener;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    iget-object v0, v0, Lcom/heyzap/common/video/view/FullscreenVideoView;->loadingSpinner:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$MediaPlayerListener;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    iget-object v0, v0, Lcom/heyzap/common/video/view/FullscreenVideoView;->loadingSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$MediaPlayerListener;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    iget-object v0, v0, Lcom/heyzap/common/video/view/FullscreenVideoView;->loadingSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$MediaPlayerListener;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    invoke-virtual {v0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->onVideoStart()V

    .line 504
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$MediaPlayerListener;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    invoke-virtual {v0, p2, p3}, Lcom/heyzap/common/video/view/FullscreenVideoView;->onVideoSizeChanged(II)V

    .line 577
    return-void
.end method
