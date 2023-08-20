<?php
include "header.php";
include "sidebar.php";
include "navbar.php";
include "class/user_class.php";
?>

<?php
$user = new user;
$show_user = $user->show_users();
$user = new user;
$show_user = $user->show_users_except_admin();
?>

<div class="container-fluid pt-4 px-4">
    <div class="bg-secondary text-center rounded p-4">
        <div class="d-flex align-items-center justify-content-between mb-4">
            <h6 class="mb-0">User List</h6>
            <a href="userlistadd.php">ADD User</a>
        </div>
        <div class="table-responsive">
            <table class="table text-start align-middle table-bordered table-hover mb-0">
                <thead>
                    <tr class="text-white">
                        <th scope="col">STT</th>
                        <th scope="col">ID</th>
                        <th scope="col">Email</th>
                        <th scope="col">Username</th>
                        <th scope="col">Password</th>
                        <th scope="col">Fullname</th>
                        <th scope="col">Address</th>
                        <th scope="col">Phone</th>
                        <th scope="col">Status</th> <!-- Thêm cột Status -->
                        <th scope="col">Edit</th>
                        <th scope="col">Delete</th>
                        <th scope="col">Administrator</th>

                    </tr>
                </thead>

                <body>
                    <?php
                    if ($show_user) {
                        $i = 0;
                        while ($result = $show_user->fetch_assoc()) {
                            $i++;
                    ?>
                            <tr>
                                
                                <td><?php echo $i ?></td>
                                <td><?php echo $result['id'] ?></td>
                                <td><?php echo $result['email'] ?></td>
                                <td><?php echo $result['username'] ?></td>
                                <td><?php echo $result['password'] ?></td>
                                <td><?php echo $result['fullname'] ?></td>
                                <td><?php echo $result['address'] ?></td>
                                <td><?php echo $result['phone'] ?></td>
                                <td>
                                    <?php
                                    if ($result['is_online'] == 2) {
                                        echo 'Banned';
                                    } else {
                                        echo $result['is_online'] ? 'Online' : 'Offline';
                                    }
                                    ?>
                                </td>
                                <td><a href="../admin/userlistedit.php?id=<?php echo $result['id']; ?>">Edit</a></td>
                                <td>
                                    <a href="../admin/userlistdelete.php" onclick="confirmDelete(<?php echo $result['id']; ?>)">Delete</a>
                                </td>
                                <?php if ($result['is_online'] == 2) : ?>
                                    <td><a href="../admin/userlistunbanned.php?id=<?php echo $result['id']; ?>" onclick="confirmUnban(<?php echo $result['id']; ?>)">Unbaned</a></td>
                                <?php else : ?>
                                    <td><a href="../admin/userlistbanned.php?id=<?php echo $result['id']; ?>" onclick="confirmBan(<?php echo $result['id']; ?>)">Ban</a></td>
                                <?php endif; ?>
                            </tr>
                    <?php
                        }
                    }
                    ?>
                </body>
            </table>
        </div>
    </div>
</div>
<script>
    function confirmDelete(userId) {
        if (confirm('Are you sure you want to delete this user?')) {
            window.location.href = 'userlistdelete.php?id=' + userId;
        }
    }
</script>
<script>
    function confirmBan(userId) {
        if (confirm('Are you sure you want to ban this user?')) {
            window.location.href = 'userlistbanned.php?id=' + userId;
        }
    }
</script>
<script>
    function confirmUnban(userId) {
        if (confirm('Are you sure you want to unban this user?')) {
            window.location.href = 'userlistunbanned.php?id=' + userId;
        }
    }
</script>

<script>
    function updateStatus(userId, isOnline) {
        var xhr = new XMLHttpRequest();
        xhr.open('POST', 'update_user_status.php', true);
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.onreadystatechange = function() {
            if (xhr.readyState === XMLHttpRequest.DONE) {
                if (xhr.status === 200) {
                    // Cập nhật thành công, có thể thực hiện thao tác khác nếu cần
                } else {
                    // Xử lý lỗi nếu cần
                }
            }
        };
        var data = 'user_id=' + userId + '&is_online=' + isOnline;
        xhr.send(data);
    }
</script>

<?php
include "footer.php";
?>

