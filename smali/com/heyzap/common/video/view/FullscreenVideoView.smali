.class public Lcom/heyzap/common/video/view/FullscreenVideoView;
.super Landroid/widget/FrameLayout;
.source "FullscreenVideoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/common/video/view/FullscreenVideoView$MediaPlayerListener;,
        Lcom/heyzap/common/video/view/FullscreenVideoView$OnVideoActionListener;,
        Lcom/heyzap/common/video/view/FullscreenVideoView$VideoSurfaceViewCallback;
    }
.end annotation


# instance fields
.field public bufferProgress:I

.field private controlView:Lcom/heyzap/common/video/view/VideoControlView;

.field private listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

.field public loadingSpinner:Landroid/app/ProgressDialog;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private model:Lcom/heyzap/common/video/VideoModelInterface;

.field private mpListener:Lcom/heyzap/common/video/view/FullscreenVideoView$MediaPlayerListener;

.field private playbackDuration:I

.field public playbackTimer:Ljava/util/Timer;

.field private totalDuration:I

.field public videoSurface:Landroid/view/SurfaceView;

.field public waitMillisBeforeSkipShow:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/heyzap/common/video/VideoModelInterface;Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->waitMillisBeforeSkipShow:Ljava/lang/Integer;

    .line 38
    iput v2, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->bufferProgress:I

    .line 39
    iput v2, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->totalDuration:I

    .line 40
    iput v2, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->playbackDuration:I

    .line 49
    iput-object p2, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->model:Lcom/heyzap/common/video/VideoModelInterface;

    .line 50
    invoke-virtual {p0, v1}, Lcom/heyzap/common/video/view/FullscreenVideoView;->setFocusable(Z)V

    .line 51
    invoke-virtual {p0, v1}, Lcom/heyzap/common/video/view/FullscreenVideoView;->setFocusableInTouchMode(Z)V

    .line 53
    iput-object p3, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    .line 54
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->playbackTimer:Ljava/util/Timer;

    .line 56
    new-instance v0, Lcom/heyzap/common/video/view/FullscreenVideoView$MediaPlayerListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/heyzap/common/video/view/FullscreenVideoView$MediaPlayerListener;-><init>(Lcom/heyzap/common/video/view/FullscreenVideoView;Lcom/heyzap/common/video/view/FullscreenVideoView$1;)V

    iput-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->mpListener:Lcom/heyzap/common/video/view/FullscreenVideoView$MediaPlayerListener;

    .line 59
    invoke-virtual {p0, v2}, Lcom/heyzap/common/video/view/FullscreenVideoView;->setBackgroundColor(I)V

    .line 62
    invoke-direct {p0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->addMediaPlayer()V

    .line 65
    invoke-direct {p0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->addControlSurface()V

    .line 68
    invoke-virtual {p0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->showControls()V

    .line 70
    invoke-direct {p0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->render()Ljava/lang/Boolean;

    .line 71
    return-void
.end method

.method static synthetic access$300(Lcom/heyzap/common/video/view/FullscreenVideoView;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/heyzap/common/video/view/FullscreenVideoView;)Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/heyzap/common/video/view/FullscreenVideoView;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->playbackDuration:I

    return v0
.end method

.method static synthetic access$502(Lcom/heyzap/common/video/view/FullscreenVideoView;I)I
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->playbackDuration:I

    return p1
.end method

.method private addControlSurface()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 99
    new-instance v0, Lcom/heyzap/common/video/view/VideoControlView;

    invoke-virtual {p0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->model:Lcom/heyzap/common/video/VideoModelInterface;

    invoke-direct {v0, v1, v2}, Lcom/heyzap/common/video/view/VideoControlView;-><init>(Landroid/content/Context;Lcom/heyzap/common/video/VideoModelInterface;)V

    iput-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->controlView:Lcom/heyzap/common/video/view/VideoControlView;

    .line 100
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->controlView:Lcom/heyzap/common/video/view/VideoControlView;

    new-instance v1, Lcom/heyzap/common/video/view/FullscreenVideoView$OnVideoActionListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/heyzap/common/video/view/FullscreenVideoView$OnVideoActionListener;-><init>(Lcom/heyzap/common/video/view/FullscreenVideoView;Lcom/heyzap/common/video/view/FullscreenVideoView$1;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/video/view/VideoControlView;->setOnActionListener(Lcom/heyzap/common/video/view/VideoControlView$OnActionListener;)V

    .line 101
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->controlView:Lcom/heyzap/common/video/view/VideoControlView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/common/video/view/FullscreenVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    return-void
.end method

.method private addMediaPlayer()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 75
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 76
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->mpListener:Lcom/heyzap/common/video/view/FullscreenVideoView$MediaPlayerListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 77
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->mpListener:Lcom/heyzap/common/video/view/FullscreenVideoView$MediaPlayerListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 78
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->mpListener:Lcom/heyzap/common/video/view/FullscreenVideoView$MediaPlayerListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 79
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->mpListener:Lcom/heyzap/common/video/view/FullscreenVideoView$MediaPlayerListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 80
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->mpListener:Lcom/heyzap/common/video/view/FullscreenVideoView$MediaPlayerListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 81
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 85
    new-instance v0, Landroid/view/SurfaceView;

    invoke-virtual {p0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->videoSurface:Landroid/view/SurfaceView;

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->videoSurface:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->videoSurface:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcom/heyzap/common/video/view/FullscreenVideoView$VideoSurfaceViewCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/heyzap/common/video/view/FullscreenVideoView$VideoSurfaceViewCallback;-><init>(Lcom/heyzap/common/video/view/FullscreenVideoView;Lcom/heyzap/common/video/view/FullscreenVideoView$1;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 91
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->videoSurface:Landroid/view/SurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 93
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 94
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 95
    iget-object v1, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->videoSurface:Landroid/view/SurfaceView;

    invoke-virtual {p0, v1, v0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    return-void
.end method

.method private render()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->model:Lcom/heyzap/common/video/VideoModelInterface;

    invoke-interface {v0}, Lcom/heyzap/common/video/VideoModelInterface;->getVideoDisplayOptions()Lcom/heyzap/common/video/VideoDisplayOptions;

    move-result-object v0

    iget-boolean v0, v0, Lcom/heyzap/common/video/VideoDisplayOptions;->forceStreaming:Z

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->model:Lcom/heyzap/common/video/VideoModelInterface;

    invoke-interface {v0}, Lcom/heyzap/common/video/VideoModelInterface;->getStreamingUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->render(Landroid/net/Uri;)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 293
    :goto_0
    return-object v0

    .line 267
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->model:Lcom/heyzap/common/video/VideoModelInterface;

    invoke-interface {v0}, Lcom/heyzap/common/video/VideoModelInterface;->isFileCached()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 268
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "local"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 272
    :catch_0
    move-exception v0

    .line 274
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "local"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 275
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->model:Lcom/heyzap/common/video/VideoModelInterface;

    invoke-interface {v0}, Lcom/heyzap/common/video/VideoModelInterface;->getVideoDisplayOptions()Lcom/heyzap/common/video/VideoDisplayOptions;

    move-result-object v0

    iget-boolean v0, v0, Lcom/heyzap/common/video/VideoDisplayOptions;->allowStreamingFallback:Z

    if-eqz v0, :cond_3

    .line 279
    const-string v0, "Local file not found. Falling back to stream and cancelling download."

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->model:Lcom/heyzap/common/video/VideoModelInterface;

    invoke-interface {v0}, Lcom/heyzap/common/video/VideoModelInterface;->getStreamingUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->render(Landroid/net/Uri;)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_0

    .line 271
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->model:Lcom/heyzap/common/video/VideoModelInterface;

    invoke-interface {v0}, Lcom/heyzap/common/video/VideoModelInterface;->getCacheEntry()Lcom/heyzap/common/cache/Entry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->render(Lcom/heyzap/common/cache/Entry;)Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    goto :goto_0

    .line 282
    :cond_3
    :try_start_4
    const-string v0, "Local file not found. No fallback to streaming."

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 283
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Local file not found. No fallback to streaming."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 286
    :catch_1
    move-exception v0

    .line 287
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    .line 289
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    if-eqz v0, :cond_4

    .line 290
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    invoke-interface {v0}, Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;->error()V

    .line 293
    :cond_4
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private render(Landroid/net/Uri;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 214
    :try_start_0
    invoke-virtual {p0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "Loading..."

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->loadingSpinner:Landroid/app/ProgressDialog;

    .line 216
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 217
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 219
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 222
    :goto_0
    return-object v0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    .line 222
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private render(Lcom/heyzap/common/cache/Entry;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 203
    :try_start_0
    invoke-virtual {p1}, Lcom/heyzap/common/cache/Entry;->getFilename()Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-direct {p0, v0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->render(Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 207
    :goto_0
    return-object v0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    .line 207
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private render(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 227
    const/4 v1, 0x0

    .line 229
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 231
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "File does not exist."

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    :goto_0
    :try_start_1
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    .line 244
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    invoke-interface {v0}, Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;->error()V

    .line 248
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 250
    if-eqz v1, :cond_1

    .line 252
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 255
    :cond_1
    :goto_1
    return-object v0

    .line 234
    :cond_2
    :try_start_3
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 236
    :try_start_4
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 238
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 240
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 250
    if-eqz v2, :cond_1

    .line 252
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 253
    :catch_1
    move-exception v1

    .line 254
    invoke-static {v1}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 253
    :catch_2
    move-exception v1

    .line 254
    invoke-static {v1}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 250
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    .line 252
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 255
    :cond_3
    :goto_3
    throw v0

    .line 253
    :catch_3
    move-exception v1

    .line 254
    invoke-static {v1}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 250
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 242
    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->playbackTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->playbackTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 300
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->playbackTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 305
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 308
    :cond_1
    return-void
.end method

.method public getPlaybackDuration()I
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->playbackDuration:I

    return v0
.end method

.method public getTotalVideoDuration()I
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->totalDuration:I

    return v0
.end method

.method public hide(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->playbackTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->playbackTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 319
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->playbackTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 324
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 327
    :cond_1
    invoke-virtual {p0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->clear()V

    .line 329
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 330
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    if-eqz v0, :cond_2

    .line 331
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    invoke-interface {v0}, Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;->hide()V

    .line 334
    :cond_2
    return-void
.end method

.method public hideControls()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->controlView:Lcom/heyzap/common/video/view/VideoControlView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/heyzap/common/video/view/VideoControlView;->setVisibility(I)V

    .line 116
    return-void
.end method

.method public isReady()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 338
    const/4 v1, 0x4

    if-ne p1, v1, :cond_5

    .line 340
    iget-object v1, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    .line 341
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/heyzap/common/video/view/FullscreenVideoView;->hide(Ljava/lang/Boolean;)V

    .line 345
    :cond_1
    iget-object v1, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->model:Lcom/heyzap/common/video/VideoModelInterface;

    invoke-interface {v1}, Lcom/heyzap/common/video/VideoModelInterface;->getVideoDisplayOptions()Lcom/heyzap/common/video/VideoDisplayOptions;

    move-result-object v1

    iget-boolean v1, v1, Lcom/heyzap/common/video/VideoDisplayOptions;->allowSkip:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 347
    iget-object v1, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->model:Lcom/heyzap/common/video/VideoModelInterface;

    invoke-interface {v1}, Lcom/heyzap/common/video/VideoModelInterface;->getVideoDisplayOptions()Lcom/heyzap/common/video/VideoDisplayOptions;

    move-result-object v1

    iget v1, v1, Lcom/heyzap/common/video/VideoDisplayOptions;->lockoutTime:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->model:Lcom/heyzap/common/video/VideoModelInterface;

    invoke-interface {v1}, Lcom/heyzap/common/video/VideoModelInterface;->getVideoDisplayOptions()Lcom/heyzap/common/video/VideoDisplayOptions;

    move-result-object v1

    iget v1, v1, Lcom/heyzap/common/video/VideoDisplayOptions;->lockoutTime:I

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    iget-object v2, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->model:Lcom/heyzap/common/video/VideoModelInterface;

    invoke-interface {v2}, Lcom/heyzap/common/video/VideoModelInterface;->getVideoDisplayOptions()Lcom/heyzap/common/video/VideoDisplayOptions;

    move-result-object v2

    iget v2, v2, Lcom/heyzap/common/video/VideoDisplayOptions;->lockoutTime:I

    if-le v1, v2, :cond_3

    .line 349
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/heyzap/common/video/view/FullscreenVideoView;->hide(Ljava/lang/Boolean;)V

    .line 358
    :cond_3
    :goto_0
    return v0

    .line 352
    :cond_4
    iget-object v1, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->model:Lcom/heyzap/common/video/VideoModelInterface;

    invoke-interface {v1}, Lcom/heyzap/common/video/VideoModelInterface;->getVideoDisplayOptions()Lcom/heyzap/common/video/VideoDisplayOptions;

    move-result-object v1

    iget-boolean v1, v1, Lcom/heyzap/common/video/VideoDisplayOptions;->allowHide:Z

    if-eqz v1, :cond_3

    .line 353
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/heyzap/common/video/view/FullscreenVideoView;->hide(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 358
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onVideoSizeChanged(II)V
    .locals 8

    .prologue
    const/4 v1, -0x1

    .line 177
    invoke-virtual {p0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 178
    invoke-virtual {p0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 180
    iget-object v3, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v3

    .line 181
    iget-object v4, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v4

    .line 183
    iget-object v5, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 185
    if-le v4, v3, :cond_0

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v4, v3

    const-wide v6, 0x3ff999999999999aL    # 1.6

    cmpl-double v3, v4, v6

    if-lez v3, :cond_0

    .line 186
    int-to-float v0, p2

    int-to-float v3, p1

    div-float/2addr v0, v3

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    move v2, v0

    .line 193
    :goto_0
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->videoSurface:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 194
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 195
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 196
    iget-object v1, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->videoSurface:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    iget-object v1, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->controlView:Lcom/heyzap/common/video/view/VideoControlView;

    invoke-virtual {v1, v0}, Lcom/heyzap/common/video/view/VideoControlView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    return-void

    .line 190
    :cond_0
    int-to-float v2, p1

    int-to-float v3, p2

    div-float/2addr v2, v3

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    move v2, v1

    move v1, v0

    goto :goto_0
.end method

.method public onVideoStart()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const/4 v7, 0x0

    .line 136
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->model:Lcom/heyzap/common/video/VideoModelInterface;

    invoke-interface {v0}, Lcom/heyzap/common/video/VideoModelInterface;->getVideoDisplayOptions()Lcom/heyzap/common/video/VideoDisplayOptions;

    move-result-object v6

    .line 137
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    invoke-interface {v0}, Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;->show()V

    .line 141
    :cond_0
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->setBackgroundColor(I)V

    .line 143
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->totalDuration:I

    .line 145
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->videoSurface:Landroid/view/SurfaceView;

    invoke-virtual {v0, v7}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->playbackTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->playbackTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->playbackTimer:Ljava/util/Timer;

    .line 152
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->playbackTimer:Ljava/util/Timer;

    .line 153
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->playbackTimer:Ljava/util/Timer;

    new-instance v1, Lcom/heyzap/common/video/view/FullscreenVideoView$1;

    invoke-direct {v1, p0}, Lcom/heyzap/common/video/view/FullscreenVideoView$1;-><init>(Lcom/heyzap/common/video/view/FullscreenVideoView;)V

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 161
    iget-boolean v0, v6, Lcom/heyzap/common/video/VideoDisplayOptions;->allowSkip:Z

    if-eqz v0, :cond_5

    .line 162
    iget v0, v6, Lcom/heyzap/common/video/VideoDisplayOptions;->lockoutTime:I

    if-lez v0, :cond_4

    .line 163
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->controlView:Lcom/heyzap/common/video/view/VideoControlView;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget v2, v6, Lcom/heyzap/common/video/VideoDisplayOptions;->lockoutTime:I

    int-to-long v2, v2

    iget-object v4, v6, Lcom/heyzap/common/video/VideoDisplayOptions;->skipLaterText:Ljava/lang/String;

    iget-object v5, v6, Lcom/heyzap/common/video/VideoDisplayOptions;->skipNowText:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/heyzap/common/video/view/VideoControlView;->addSkipButton(Ljava/lang/Boolean;JLjava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_2
    :goto_0
    iget-boolean v0, v6, Lcom/heyzap/common/video/VideoDisplayOptions;->allowInstallButton:Z

    if-eqz v0, :cond_3

    .line 172
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->controlView:Lcom/heyzap/common/video/view/VideoControlView;

    iget-object v1, v6, Lcom/heyzap/common/video/VideoDisplayOptions;->installButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/heyzap/common/video/view/VideoControlView;->addCtaButton(Ljava/lang/String;)V

    .line 174
    :cond_3
    return-void

    .line 166
    :cond_4
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->controlView:Lcom/heyzap/common/video/view/VideoControlView;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v4, v6, Lcom/heyzap/common/video/VideoDisplayOptions;->skipLaterText:Ljava/lang/String;

    iget-object v5, v6, Lcom/heyzap/common/video/VideoDisplayOptions;->skipNowText:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/heyzap/common/video/view/VideoControlView;->addSkipButton(Ljava/lang/Boolean;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_5
    iget-boolean v0, v6, Lcom/heyzap/common/video/VideoDisplayOptions;->allowHide:Z

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->controlView:Lcom/heyzap/common/video/view/VideoControlView;

    invoke-virtual {v0}, Lcom/heyzap/common/video/view/VideoControlView;->addHideButton()V

    goto :goto_0
.end method

.method public onVideoTick()V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 120
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    sub-int/2addr v1, v2

    .line 125
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v2, v0

    .line 127
    iget-object v2, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    invoke-interface {v2, v1, v0}, Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;->progress(IF)V

    .line 129
    iget-object v2, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->model:Lcom/heyzap/common/video/VideoModelInterface;

    invoke-interface {v2}, Lcom/heyzap/common/video/VideoModelInterface;->getVideoDisplayOptions()Lcom/heyzap/common/video/VideoDisplayOptions;

    move-result-object v2

    iget-boolean v2, v2, Lcom/heyzap/common/video/VideoDisplayOptions;->allowAdTimer:Z

    if-eqz v2, :cond_0

    .line 130
    iget-object v2, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->controlView:Lcom/heyzap/common/video/view/VideoControlView;

    invoke-virtual {v2, v1, v0}, Lcom/heyzap/common/video/view/VideoControlView;->updateScrubber(IF)V

    goto :goto_0
.end method

.method public restart()V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    invoke-interface {v0}, Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;->show()V

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 367
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    invoke-interface {v0}, Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;->resume()V

    .line 371
    :cond_0
    return-void
.end method

.method public showControls()V
    .locals 4

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 107
    invoke-virtual {p0}, Lcom/heyzap/common/video/view/FullscreenVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a0000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 108
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 109
    iget-object v1, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->controlView:Lcom/heyzap/common/video/view/VideoControlView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/heyzap/common/video/view/VideoControlView;->setVisibility(I)V

    .line 110
    iget-object v1, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->controlView:Lcom/heyzap/common/video/view/VideoControlView;

    invoke-virtual {v1, v0}, Lcom/heyzap/common/video/view/VideoControlView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 111
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/heyzap/common/video/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 314
    :cond_0
    return-void
.end method
