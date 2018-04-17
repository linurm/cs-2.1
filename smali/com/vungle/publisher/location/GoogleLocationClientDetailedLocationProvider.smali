.class public Lcom/vungle/publisher/location/GoogleLocationClientDetailedLocationProvider;
.super Lcom/vungle/publisher/location/BaseGoogleDetailedLocationProvider;
.source "vungle"

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;
.implements Lcom/vungle/publisher/cl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/location/BaseGoogleDetailedLocationProvider",
        "<",
        "Lcom/google/android/gms/location/LocationClient;",
        ">;",
        "Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;",
        "Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;",
        "Lcom/vungle/publisher/cl;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field b:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/vungle/publisher/location/BaseGoogleDetailedLocationProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "Google Play Services LocationClient"

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 20
    check-cast p1, Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationClient;->isConnected()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic b()Landroid/location/Location;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/vungle/publisher/location/BaseGoogleDetailedLocationProvider;->b()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationClient;->connect()V

    return-void
.end method

.method protected final synthetic c(Ljava/lang/Object;)Landroid/location/Location;
    .locals 1

    .prologue
    .line 20
    check-cast p1, Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationClient;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic c()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vungle/publisher/location/GoogleLocationClientDetailedLocationProvider;->b:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/location/LocationClient;

    invoke-direct {v1, v0, p0, p0}, Lcom/google/android/gms/location/LocationClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-object v1
.end method

.method protected final synthetic d(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationClient;->disconnect()V

    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Lcom/vungle/publisher/location/BaseGoogleDetailedLocationProvider;->d()V

    .line 67
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0
    .param p1, "connectionResult"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/vungle/publisher/location/BaseGoogleDetailedLocationProvider;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 79
    return-void
.end method

.method public onDisconnected()V
    .locals 3

    .prologue
    .line 71
    const-string v0, "VungleLocation"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "disconnected from Google Play Services LocationClient "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vungle/publisher/location/BaseGoogleDetailedLocationProvider;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method
