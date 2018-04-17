.class public Lrrrrrr/rccrrr;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x3
    name = "rccrrr"
.end annotation


# instance fields
.field public final synthetic b0415Е0415Е04150415:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;


# direct methods
.method private constructor <init>(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;)V
    .locals 0

    iput-object p1, p0, Lrrrrrr/rccrrr;->b0415Е0415Е04150415:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;Lrrrrrr/rrcrrr;)V
    .locals 0

    invoke-direct {p0, p1}, Lrrrrrr/rccrrr;-><init>(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lrrrrrr/rccrrr;->b0415Е0415Е04150415:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    invoke-static {v0}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->bц0446ц04460446ц(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lrrrrrr/rccrrr;->b0415Е0415Е04150415:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    invoke-static {v1}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->b0446цц04460446ц(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lrrrrrr/rccrrr;->b0415Е0415Е04150415:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->b04460446ц04460446ц(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;I)I

    iget-object v0, p0, Lrrrrrr/rccrrr;->b0415Е0415Е04150415:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->bцц044604460446ц(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;I)I

    iget-object v0, p0, Lrrrrrr/rccrrr;->b0415Е0415Е04150415:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->b0446ц044604460446ц(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;I)I

    iget-object v0, p0, Lrrrrrr/rccrrr;->b0415Е0415Е04150415:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    invoke-static {v0}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->bц0446044604460446ц(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lrrrrrr/rccrrr;->b0415Е0415Е04150415:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    const-string v2, "playback_timecode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "playback_uptime"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->b04460446044604460446ц(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;IJ)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lrrrrrr/rccrrr;->b0415Е0415Е04150415:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    invoke-static {v0}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->bццццц0446(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;)Lcom/immersion/hapticmediasdk/controllers/IHapticFileReader;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lrrrrrr/rccrrr;->b0415Е0415Е04150415:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    iget-object v1, p0, Lrrrrrr/rccrrr;->b0415Е0415Е04150415:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    invoke-static {v1}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->bц0446ццц0446(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lrrrrrr/rccrrr;->b0415Е0415Е04150415:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    invoke-static {v2}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->b04460446ццц0446(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;)Lcom/immersion/hapticmediasdk/utils/FileManager;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/immersion/hapticmediasdk/controllers/FileReaderFactory;->getHapticFileReaderInstance(Ljava/lang/String;Lcom/immersion/hapticmediasdk/utils/FileManager;)Lcom/immersion/hapticmediasdk/controllers/IHapticFileReader;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->b0446цццц0446(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;Lcom/immersion/hapticmediasdk/controllers/IHapticFileReader;)Lcom/immersion/hapticmediasdk/controllers/IHapticFileReader;

    :cond_1
    iget-object v0, p0, Lrrrrrr/rccrrr;->b0415Е0415Е04150415:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    invoke-static {v0}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->bццццц0446(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;)Lcom/immersion/hapticmediasdk/controllers/IHapticFileReader;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lrrrrrr/rccrrr;->b0415Е0415Е04150415:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    invoke-static {v0}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->bцц0446цц0446(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lrrrrrr/rccrrr;->b0415Е0415Е04150415:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    iget-object v1, p0, Lrrrrrr/rccrrr;->b0415Е0415Е04150415:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    invoke-static {v1}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->bццццц0446(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;)Lcom/immersion/hapticmediasdk/controllers/IHapticFileReader;

    move-result-object v1

    invoke-interface {v1}, Lcom/immersion/hapticmediasdk/controllers/IHapticFileReader;->getBlockSizeMS()I

    move-result v1

    invoke-static {v0, v1}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->b0446ц0446цц0446(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;I)I

    :cond_2
    iget-object v0, p0, Lrrrrrr/rccrrr;->b0415Е0415Е04150415:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    invoke-static {v0}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->bццццц0446(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;)Lcom/immersion/hapticmediasdk/controllers/IHapticFileReader;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrrrrrr/rccrrr;->b0415Е0415Е04150415:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    invoke-static {v0}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->bццццц0446(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;)Lcom/immersion/hapticmediasdk/controllers/IHapticFileReader;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/immersion/hapticmediasdk/controllers/IHapticFileReader;->setBytesAvailable(I)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lrrrrrr/rccrrr;->b0415Е0415Е04150415:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    invoke-static {v0}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->bц04460446цц0446(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lrrrrrr/rccrrr;->b0415Е0415Е04150415:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    invoke-static {v0}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->b044604460446цц0446(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lrrrrrr/rccrrr;->b0415Е0415Е04150415:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    invoke-static {v0, p1}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->bццц0446ц0446(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lrrrrrr/rccrrr;->b0415Е0415Е04150415:Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;

    invoke-static {v0}, Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;->b0446цц0446ц0446(Lcom/immersion/hapticmediasdk/controllers/HapticPlaybackThread;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
