.class public Lrrrrrr/crrrrr;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/immersion/hapticmediasdk/controllers/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x3
    name = "crrrrr"
.end annotation


# instance fields
.field public final synthetic bС04210421С0421С:Lcom/immersion/hapticmediasdk/controllers/MediaController;


# direct methods
.method public constructor <init>(Lcom/immersion/hapticmediasdk/controllers/MediaController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lrrrrrr/crrrrr;->bС04210421С0421С:Lcom/immersion/hapticmediasdk/controllers/MediaController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lrrrrrr/crrrrr;->bС04210421С0421С:Lcom/immersion/hapticmediasdk/controllers/MediaController;

    invoke-static {v0}, Lcom/immersion/hapticmediasdk/controllers/MediaController;->bц04460446044604460446(Lcom/immersion/hapticmediasdk/controllers/MediaController;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lrrrrrr/crrrrr;->bС04210421С0421С:Lcom/immersion/hapticmediasdk/controllers/MediaController;

    invoke-static {v0}, Lcom/immersion/hapticmediasdk/controllers/MediaController;->b044Aъъъъъ(Lcom/immersion/hapticmediasdk/controllers/MediaController;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lrrrrrr/crrrrr;->bС04210421С0421С:Lcom/immersion/hapticmediasdk/controllers/MediaController;

    invoke-static {v0}, Lcom/immersion/hapticmediasdk/controllers/MediaController;->bъ044Aъъъъ(Lcom/immersion/hapticmediasdk/controllers/MediaController;)Lcom/immersion/hapticmediasdk/MediaTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/MediaTaskManager;->getSDKStatus()Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    move-result-object v0

    sget-object v1, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->PAUSED_DUE_TO_BUFFERING:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lrrrrrr/crrrrr;->bС04210421С0421С:Lcom/immersion/hapticmediasdk/controllers/MediaController;

    invoke-static {v0}, Lcom/immersion/hapticmediasdk/controllers/MediaController;->bъ044Aъъъъ(Lcom/immersion/hapticmediasdk/controllers/MediaController;)Lcom/immersion/hapticmediasdk/MediaTaskManager;

    move-result-object v0

    sget-object v1, Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;->PLAYING:Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;

    invoke-virtual {v0, v1}, Lcom/immersion/hapticmediasdk/MediaTaskManager;->transitToState(Lcom/immersion/hapticmediasdk/HapticContentSDK$SDKStatus;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lrrrrrr/crrrrr;->bС04210421С0421С:Lcom/immersion/hapticmediasdk/controllers/MediaController;

    iget-object v1, p0, Lrrrrrr/crrrrr;->bС04210421С0421С:Lcom/immersion/hapticmediasdk/controllers/MediaController;

    invoke-static {v1}, Lcom/immersion/hapticmediasdk/controllers/MediaController;->bц04460446044604460446(Lcom/immersion/hapticmediasdk/controllers/MediaController;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/immersion/hapticmediasdk/controllers/MediaController;->b044A044Aъъъъ(Lcom/immersion/hapticmediasdk/controllers/MediaController;IJ)V

    iget-object v0, p0, Lrrrrrr/crrrrr;->bС04210421С0421С:Lcom/immersion/hapticmediasdk/controllers/MediaController;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/controllers/MediaController;->playbackStarted()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lrrrrrr/crrrrr;->bС04210421С0421С:Lcom/immersion/hapticmediasdk/controllers/MediaController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/immersion/hapticmediasdk/controllers/MediaController;->bъъ044Aъъъ(Lcom/immersion/hapticmediasdk/controllers/MediaController;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lrrrrrr/crrrrr;->bС04210421С0421С:Lcom/immersion/hapticmediasdk/controllers/MediaController;

    invoke-static {v0, p1}, Lcom/immersion/hapticmediasdk/controllers/MediaController;->b044Aъ044Aъъъ(Lcom/immersion/hapticmediasdk/controllers/MediaController;Landroid/os/Message;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
