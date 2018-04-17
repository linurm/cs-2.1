.class Lcom/heyzap/common/video/view/FullscreenVideoView$OnVideoActionListener;
.super Ljava/lang/Object;
.source "FullscreenVideoView.java"

# interfaces
.implements Lcom/heyzap/common/video/view/VideoControlView$OnActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/common/video/view/FullscreenVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnVideoActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;


# direct methods
.method private constructor <init>(Lcom/heyzap/common/video/view/FullscreenVideoView;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$OnVideoActionListener;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/heyzap/common/video/view/FullscreenVideoView;Lcom/heyzap/common/video/view/FullscreenVideoView$1;)V
    .locals 0

    .prologue
    .line 432
    invoke-direct {p0, p1}, Lcom/heyzap/common/video/view/FullscreenVideoView$OnVideoActionListener;-><init>(Lcom/heyzap/common/video/view/FullscreenVideoView;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$OnVideoActionListener;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    invoke-static {v0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->access$300(Lcom/heyzap/common/video/view/FullscreenVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$OnVideoActionListener;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    invoke-static {v0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->access$300(Lcom/heyzap/common/video/view/FullscreenVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$OnVideoActionListener;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    invoke-static {v0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->access$400(Lcom/heyzap/common/video/view/FullscreenVideoView;)Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$OnVideoActionListener;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    invoke-static {v0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->access$400(Lcom/heyzap/common/video/view/FullscreenVideoView;)Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;->click()V

    .line 479
    :cond_1
    return-void
.end method

.method public onHide()V
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$OnVideoActionListener;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    invoke-static {v0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->access$400(Lcom/heyzap/common/video/view/FullscreenVideoView;)Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$OnVideoActionListener;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    invoke-static {v0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->access$300(Lcom/heyzap/common/video/view/FullscreenVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 456
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$OnVideoActionListener;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    invoke-static {v0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->access$300(Lcom/heyzap/common/video/view/FullscreenVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 457
    iget-object v1, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$OnVideoActionListener;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    invoke-static {v1}, Lcom/heyzap/common/video/view/FullscreenVideoView;->access$500(Lcom/heyzap/common/video/view/FullscreenVideoView;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 458
    iget-object v1, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$OnVideoActionListener;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    invoke-static {v1, v0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->access$502(Lcom/heyzap/common/video/view/FullscreenVideoView;I)I

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$OnVideoActionListener;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    invoke-static {v0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->access$300(Lcom/heyzap/common/video/view/FullscreenVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 462
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$OnVideoActionListener;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    invoke-static {v0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->access$400(Lcom/heyzap/common/video/view/FullscreenVideoView;)Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;->hide()V

    .line 468
    :cond_1
    :goto_0
    return-void

    .line 465
    :cond_2
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$OnVideoActionListener;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    invoke-static {v0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->access$400(Lcom/heyzap/common/video/view/FullscreenVideoView;)Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;->hide()V

    goto :goto_0
.end method

.method public onSkip()V
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$OnVideoActionListener;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    invoke-static {v0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->access$400(Lcom/heyzap/common/video/view/FullscreenVideoView;)Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$OnVideoActionListener;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    invoke-static {v0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->access$300(Lcom/heyzap/common/video/view/FullscreenVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$OnVideoActionListener;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    invoke-static {v0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->access$300(Lcom/heyzap/common/video/view/FullscreenVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 440
    iget-object v1, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$OnVideoActionListener;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    invoke-static {v1}, Lcom/heyzap/common/video/view/FullscreenVideoView;->access$500(Lcom/heyzap/common/video/view/FullscreenVideoView;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 441
    iget-object v1, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$OnVideoActionListener;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    invoke-static {v1, v0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->access$502(Lcom/heyzap/common/video/view/FullscreenVideoView;I)I

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$OnVideoActionListener;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    invoke-static {v0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->access$400(Lcom/heyzap/common/video/view/FullscreenVideoView;)Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$OnVideoActionListener;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    invoke-static {v1}, Lcom/heyzap/common/video/view/FullscreenVideoView;->access$500(Lcom/heyzap/common/video/view/FullscreenVideoView;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;->skip(Ljava/lang/Integer;)V

    .line 446
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView$OnVideoActionListener;->this$0:Lcom/heyzap/common/video/view/FullscreenVideoView;

    invoke-static {v0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->access$300(Lcom/heyzap/common/video/view/FullscreenVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 449
    :cond_1
    return-void
.end method
