.class public Lcom/immersion/hapticmediasdk/HapticContentSDKFactory;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "HapticContentSDKFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetNewSDKInstance(ILandroid/content/Context;)Lcom/immersion/hapticmediasdk/HapticContentSDK;
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/immersion/content/EndpointWarp;->loadSharedLibrary()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const-string v1, "HapticContentSDKFactory"

    const-string v2, "Failed to create a Haptic Content SDK instance. invalid context: null"

    invoke-static {v1, v2}, Lcom/immersion/hapticmediasdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    packed-switch p0, :pswitch_data_0

    const-string v1, "HapticContentSDKFactory"

    const-string v2, "Failed to create a Haptic Content SDK instance. Invalid mode"

    invoke-static {v1, v2}, Lcom/immersion/hapticmediasdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    new-instance v1, Lcom/immersion/hapticmediasdk/MediaPlaybackSDK;

    invoke-direct {v1, p1}, Lcom/immersion/hapticmediasdk/MediaPlaybackSDK;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/immersion/hapticmediasdk/HapticContentSDK;->bц04460446ц04460446()I

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "HapticContentSDKFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create Haptic Content SDK instance. error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/immersion/hapticmediasdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "HapticContentSDKFactory"

    const-string v2, "Haptic Content SDK instance was created successfully"

    invoke-static {v0, v2}, Lcom/immersion/hapticmediasdk/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
