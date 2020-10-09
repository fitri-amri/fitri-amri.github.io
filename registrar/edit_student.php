<?php include('header.php'); ?>
<?php include('session.php'); ?>
<?php include('navbar_dasboard.php'); ?>
<?php $get_id = $_GET['id']; ?>
    <div class="container">
		<div class="margin-top">
			<div class="row">	
			<div class="span12">	
		<?php 
		$query=mysql_query("select * from students where student_id='$get_id'")or die(mysql_error());
		$row=mysql_fetch_array($query);
		
		?>
             <div class="alert alert-info"><i class="icon-pencil"></i>&nbsp;Edit Student</div>
			<p><a class="btn btn-info" href="students.php"><i class="icon-arrow-left icon-large"></i>&nbsp;Back</a></p>
	<div class="addstudent">
	<div class="details">Please Enter Details Below</div>	
	<form class="form-horizontal" method="POST" action="update_students.php" enctype="multipart/form-data">
			<div class="control-group">
			<label class="control-label" for="inputEmail">Student No:</label>
			<div class="controls">
			<input type="hidden" id="inputEmail" name="id" value="<?php echo $row['student_id']; ?>" placeholder="Student No" required>
			<input type="text" id="inputEmail" name="student_no" value="<?php echo $row['student_no']; ?>" placeholder="Student No" readonly required>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="inputEmail">Firstname:</label>
			<div class="controls">
			<input type="text" id="inputEmail" name="firstname" value="<?php echo $row['firstname']; ?>" placeholder="Firstname" required>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="inputPassword">Lastname:</label>
			<div class="controls">
			<input type="text" id="inputPassword" name="lastname" value="<?php echo $row['lastname']; ?>" placeholder="Lastname" required>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label" for="inputPassword">IC Number:</label>
			<div class="controls">
			<input type="text" id="inputPassword" name="icnumber" value="<?php echo $row['icnumber']; ?>" placeholder="IC Number" required>
			</div>
		</div>
		
		
		<div class="control-group">
			<label class="control-label" for="inputPassword">Gender:</label>
			<div class="controls">
			<input type="text" id="inputPassword" name="gender" value="<?php echo $row['gender']; ?>"  required>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label" for="inputPassword">Address:</label>
			<div class="controls">
			<input type="text" id="inputPassword" name="address" value="<?php echo $row['address']; ?>"  required>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label" for="inputPassword">Password:</label>
			<div class="controls">
			<input type="text" id="inputPassword" name="password" value="<?php echo $row['password']; ?>" placeholder="Password" required>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="inputPassword">Muet Result: </label> 
			<div class="controls">
			<select name="muet" required>
									<option><?php echo $row['muet']; ?></option>
									<option>Band 1</option>
									<option>Band 2</option>
									<option>Band 3</option>
									<option>Band 4</option>
									<option>Band 5</option>
									<option>Band 6</option>
					</select>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label" for="inputPassword">Fees :</label>
			<div class="controls">
			<select name="fees" required>
									<option><?php echo $row['fees']; ?></option>
									<option>Paid</option>
									<option>Unpaid</option>
									
					</select>
			</div>
		</div>

		<div class="control-group">
			<label class="control-label" for="inputPassword">Course:</label>
			<div class="controls">
			<select name="course" required class="span2">
			<option><?php echo $row['course']; ?></option>
				<?php
				$query=mysql_query("select * from course") or die(mysql_error());
				while($row=mysql_fetch_array($query)){ ?>
				<option><?php echo $row['code']; ?></option>
				<?php } ?>
			</select>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label" for="inputPassword">Year Level:</label>
			<div class="controls">
				<select name="year_level" required>
					
	<?php 
		$query=mysql_query("select * from students where student_id='$get_id'")or die(mysql_error());
		$row1=mysql_fetch_array($query);
		
		?>					
									<option><?php echo $row1['year_level']; ?></option>
									<option>First Year</option>
									<option>Second Year</option>
									<option>Third Year</option>
									<option>Fourth Year</option>
				</select>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="inputPassword">Semester:</label>
			<div class="controls">
					<select name="term" class="span2" required>
									<option><?php  echo $row1['term']; ?></option>
									<option>1st</option>
									<option>2nd</option>
					</select>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label" for="inputPassword">Contact Number:</label>
			<div class="controls">
			<input type="text" id="inputPassword" name="contact" value="<?php echo $row1['contact']; ?>" required>
			</div>
		</div>
		
		
				<div class="control-group">
			<label class="control-label" for="inputPassword">Status:</label>
			<div class="controls">
					<select name="status" class="span2" required>
									<option><?php echo $row1['student_status']; ?></option>
									<option>Regular</option>
									<option>Irregular</option>
					</select>
			</div>
		</div>
		
		
		
		<div class="control-group">
			<div class="controls">
			<button name="submit" type="submit" class="btn btn-success"><i class="icon-save icon-large"></i>&nbsp;Update</button>
			</div>
		</div>
    </form>				
			</div>		
			</div>		
			</div>
		</div>
    </div>
<?php include('footer.php') ?>