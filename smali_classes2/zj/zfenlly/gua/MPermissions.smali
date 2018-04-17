.class public Lzj/zfenlly/gua/MPermissions;
.super Ljava/lang/Object;
.source "MPermissions.java"


# static fields
.field public static final OVERLAY_PERMISSION_REQ_CODE:I = 0x302f

.field public static final WRITE_EXTERNAL:I = 0x2

.field static floatWinIntent:Landroid/content/Intent; = null

.field public static request_permission:I = 0x99


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static askForPermission(Landroid/app/Activity;)V
    .locals 4

    .line 140
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lzj/zfenlly/gua/FloatWinService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v0, Lzj/zfenlly/gua/MPermissions;->floatWinIntent:Landroid/content/Intent;

    .line 141
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 142
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u5f53\u524d\u65e0\u6743\u9650\uff0c\u8bf7\u6388\u6743\uff01"

    const/4 v1, 0x0

    .line 143
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 144
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "ztag"

    const-string v2, "request overlay permission"

    .line 146
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x302f

    .line 147
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    const-string v0, "ztag"

    const-string v1, "can draw overlay permission"

    .line 149
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    sget-object v0, Lzj/zfenlly/gua/MPermissions;->floatWinIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    :goto_0
    return-void
.end method

.method private static checkPermissions(Landroid/app/Activity;[Ljava/lang/String;)Z
    .locals 5

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    .line 63
    :cond_0
    array-length v0, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p1, v3

    .line 64
    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static getDeniedPermissions(Landroid/app/Activity;[Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 81
    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v3}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 82
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static onPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 167
    sget p2, Lzj/zfenlly/gua/MPermissions;->request_permission:I

    if-ne p1, p2, :cond_1

    .line 168
    invoke-static {p3}, Lzj/zfenlly/gua/MPermissions;->verifyPermissions([I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 169
    sget p1, Lzj/zfenlly/gua/MPermissions;->request_permission:I

    invoke-static {p0, p1}, Lzj/zfenlly/gua/MPermissions;->permissionSuccess(Landroid/app/Activity;I)V

    goto :goto_0

    .line 171
    :cond_0
    sget p0, Lzj/zfenlly/gua/MPermissions;->request_permission:I

    invoke-static {p0}, Lzj/zfenlly/gua/MPermissions;->permissionFail(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static onResult(Landroid/app/Activity;I)V
    .locals 1

    const/16 v0, 0x302f

    if-ne p1, v0, :cond_1

    .line 127
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ztag"

    const-string v0, "permission granted start float win"

    .line 128
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    sget-object p1, Lzj/zfenlly/gua/MPermissions;->floatWinIntent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    const-string p0, "ztag"

    const-string p1, "draw overlay permission not granted"

    .line 133
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static permissionFail(I)V
    .locals 3

    const-string v0, "ztag"

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u6743\u9650\u5931\u8d25="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static permissionSuccess(Landroid/app/Activity;I)V
    .locals 3

    const-string v0, "ztag"

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u6743\u9650\u6210\u529f="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    invoke-static {p0}, Lzj/zfenlly/gua/MPermissions;->askForPermission(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method public static requestPermission(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 48
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lzj/zfenlly/gua/MPermissions;->requestPermission(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public static requestPermission(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 0

    .line 37
    sput p2, Lzj/zfenlly/gua/MPermissions;->request_permission:I

    .line 38
    invoke-static {p0, p1}, Lzj/zfenlly/gua/MPermissions;->checkPermissions(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 39
    sget p1, Lzj/zfenlly/gua/MPermissions;->request_permission:I

    invoke-static {p0, p1}, Lzj/zfenlly/gua/MPermissions;->permissionSuccess(Landroid/app/Activity;I)V

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {p0, p1}, Lzj/zfenlly/gua/MPermissions;->getDeniedPermissions(Landroid/app/Activity;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    sget p2, Lzj/zfenlly/gua/MPermissions;->request_permission:I

    invoke-static {p0, p1, p2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public static verifyPermissions([I)Z
    .locals 4

    .line 96
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
